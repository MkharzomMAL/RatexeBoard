<?php

namespace App\Http\Controllers;

use App\Models\Currency;
use Illuminate\Http\Request;

class CurrencyController extends Controller
{
    public function store(Request $request){

        $currencies = Currency::where('enable',1)->orderBy('sort')->get();

        foreach($currencies as $currency){

            $currency->sell = $request->input( $currency->code .'_sell');
            $currency->buy = $request->input( $currency->code .'_buy');

            $currency->save();
        }

        return redirect('/');
    }
}
