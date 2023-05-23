<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">

  <title>Currency Rate Board</title>
</head>
<body>
    <header class="bg-primary text-white text-center py-2 d-flex align-items-center">
        <img class="mx-4" src="{{ Voyager::image($company->logo) }}" alt="Company Logo" width="50">
        <h2 class="mt-2">{{ $company->name }} <small>License No : {{ $company->lic }}</small></h2>
    </header>