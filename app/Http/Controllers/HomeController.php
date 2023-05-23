<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Currency;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Laravel\Ui\Presets\React;

class HomeController extends Controller
{
    public function index(){

        $company = Company::get()->first();
        $currencies = Currency::where('enable',1)->orderBy('sort')->get();
        return view('homepage',compact('currencies','company'));
    }

    public function exchange(){

        $symbols = implode(',', DB::table('currencies')->pluck('code')->toArray());

        // dd($symbols);
        $curl = curl_init();

        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://api.apilayer.com/exchangerates_data/latest?symbols=$symbols&base=MYR",
          CURLOPT_HTTPHEADER => array(
            "Content-Type: text/plain",
            "apikey: 479UtuGzzbGZFRnU47xyLE7kMTmYzcZV"
          ),
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET"
        ));
        
        $response = curl_exec($curl);
        
        curl_close($curl);
        
        // dd($response);

        // Handle the API response
        if ($response) {
            $data = json_decode($response, true);
            // Check if the response was successful
            if ($data && isset($data['success']) && $data['success']) {
                // Access the exchange rates
                $exchangeRates = $data['rates'];
                // Loop through the exchange rates
                foreach ($exchangeRates as $currencyCode => $rate) {

                    $currency = Currency::where('code',$currencyCode)->first() ;

                    // Calculate sell and buy values based on the rate
                    $sellValue = round(1/$rate * $currency->unit * 1.01,3); // For example, increase the rate by 1%
                    $buyValue = round(1/$rate * $currency->unit * 0.99,3); // For example, decrease the rate by 1%

                    // Update the currency values in the database

                    $currency->sell = $sellValue;
                    $currency->buy = $buyValue ;

                    $currency->save();
 
                }
            } else {
                // API request was not successful, handle the error
                if (isset($data['error'])) {
                    $errorMessage = $data['error']['info'];
                    // Handle the error message accordingly
                }
            }
        } else {
            // Error occurred while making the API request
            $errorMessage = curl_error($curl);
            // Handle the error message accordingly
        }
    }

    public function update(Request $request){

        $company = Company::get()->first();
        return view('update',compact('company'));
    }
}
