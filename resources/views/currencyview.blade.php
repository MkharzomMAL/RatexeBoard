<div class="container p-0 m-auto mt-4">
    <div class="row">
        <div class="col-6">
            <table class="table">
                <thead>
                  <tr>
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
                          <td>{{ $currency->code }}</td>
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
                  <tr>
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
                          <td>{{ $currency->code }}</td>
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
