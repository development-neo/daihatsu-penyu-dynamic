<html lang="en" dir="">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gull - Laravel + Bootstrap 4 admin template</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="{{ url('administrator/assets/styles/css/themes/lite-purple.min.css') }}">
    <link rel="stylesheet" href="{{ url('administrator/assets/styles/vendor/perfect-scrollbar.css') }}">
    <style type="text/css">
        .breadcrumb { 
            text-transform: capitalize; 
        }
    </style>
</head>

<body class="text-left">

    @if(\Auth::user())

    <div class="app-admin-wrap layout-horizontal-bar">

        @include('administrator.layouts.header')

        @include('administrator.layouts.horizontal-bars')

        <!-- ============ Body content start ============= -->
        <div class="main-content-wrap d-flex flex-column ">

            @include('administrator.layouts.breadcrumb')

            <div class="separator-breadcrumb border-top "></div>
            
            @yield('content')

        </div>
        <!-- ============ Body content End ============= -->

    </div>
    <!--=============== End app-admin-wrap ================-->

    @else

        @yield('content')
   
    @endif

    @include('administrator.layouts.search-ui')

    <script src="{{ url('administrator/assets/js/vendor/jquery-3.3.1.min.js') }}"></script>
    <script src="{{ url('administrator/assets/js/vendor/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ url('administrator/assets/js/vendor/perfect-scrollbar.min.js') }}"></script>
    <script src="{{ url('administrator/assets/js/es5/script.min.js') }}"></script>
    <script src="{{ url('administrator/assets/js/sidebar-horizontal.script.js') }}"></script>
    <script src="{{ url('administrator/assets/js/custom.js') }}"></script>
    <script src="{{ url('administrator/assets/js/dynamic.js') }}"></script>
    <script>
    </script>

</body>

</html>