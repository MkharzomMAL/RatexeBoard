@extends('layout.app')

@section('body')


<div class="container p-0 m-auto mt-4">
    <form id="update-form" action="{{ route('currency.store') }}" method="POST">
        @csrf
    <div class="row update">
            <div class="col-6">
                <table class="table">
                    <thead>
                    <tr>
                        <th>Unit</th>
                        <th>Code</th>
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
                            <td><input class="form-control" value="{{ $currency->buy }}" placeholder="{{ $currency->buy }}" type="number" name="{{ $currency->code . '_buy' }}" id=""></td>
                            <td><input class="form-control" value="{{ $currency->sell }}" placeholder="{{ $currency->sell }}" type="number" name="{{ $currency->code . '_sell' }}" id=""></td>
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
                        <th>Code</th>
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
                            <td><input class="form-control" value="{{ $currency->buy }}" placeholder="{{ $currency->buy }}" type="number" name="{{ $currency->code . '_buy' }}" id=""></td>
                            <td><input class="form-control" value="{{ $currency->sell }}" placeholder="{{ $currency->sell }}" type="number" name="{{ $currency->code . '_sell' }}" id=""></td>
                        </tr>
                    @endforeach
                    
                    </tbody>
                </table>
            </div>
    </div>
    <a id="submit-btn" class="btn btn-primary" type="submit" name="submit"> Save </a>
    <a href="{{ route('auto.update') }}" class="btn btn-primary">Get Auto</a>
    </form>
</div>


@endsection