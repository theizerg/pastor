<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MMM - @yield('title')</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="robots" content="noindex, nofollow">
    <link href="{{ asset('css/apps.css') }}" rel="stylesheet" />
    <link rel="icon" href="{{ asset('images/logo/logo.png') }}">

    <link href="{{ asset('iconfont/material-icons.css') }}" rel="stylesheet" />
    <link href="{{ asset('css/system.css') }}" rel="stylesheet" />

    @stack('styles')
  </head>

  <body class="blue-gradient-dark" >
    <!--Page Content Here -->
    @yield('content')

    <!-- REQUIRED JS SCRIPTS -->
    <script src="{{ asset('js/apps.js') }}"></script>>
    @stack('scripts')
  </body>
</html>
