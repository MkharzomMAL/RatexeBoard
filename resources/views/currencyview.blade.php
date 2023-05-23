<div class="container p-0 m-auto">
    <div class="row">
        <div class="col-6">
            <table class="table">
                <thead>
                  <tr style="background-color: #f2f2f2">
                    <th>Unit</th>
                    <th>ISO Code</th>
                    <th>Currency Name</th>
                    <th>We Buy</th>
                    <th>We Sell</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($currencies->take(12) as $currency)
                      <tr>
                          <td>{{ $currency->unit }}</td>
                          <td><img class="mx-2 w-20" src="{{ Voyager::image($currency->logo) }}" alt="">{{ $currency->code }}</td>
                          <td>{{ $currency->title }}</td>
                          <td>{{ $currency->buy }}</td>
                          <td>{{ $currency->sell }}</td>
                      </tr>
                  @endforeach
                  
                </tbody>
              </table>
        </div>
        <div class="col-6">
            <table class="table">
                <thead>
                  <tr style="background-color: #f2f2f2">
                    <th>Unit</th>
                    <th>ISO Code</th>
                    <th>Currency Name</th>
                    <th>We Buy</th>
                    <th>We Sell</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($currencies->skip(12) as $currency)
                      <tr>
                          <td>{{ $currency->unit }}</td>
                          <td><img class="mx-2 w-20" src="{{ Voyager::image($currency->logo) }}" alt="">{{ $currency->code }}</td>
                          <td>{{ $currency->title }}</td>
                          <td>{{ $currency->buy }}</td>
                          <td>{{ $currency->sell }}</td>
                      </tr>
                  @endforeach
                  
                </tbody>
              </table>
        </div>
    </div>
    
</div>
