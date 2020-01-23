<html>
    <head>
        {!! $intepreter['head']['meta'] !!}
        <link href="{{ url('css/custom.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/library_components/bootstrap_carousel_type_1.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/library_components/bootstrap_carousel_type_2.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/library_components/bootstrap_carousel_type_3.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/library_components/slider-1.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/library_components/slider-2.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/library_components/slider-3.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/library_components/slider-4.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/library_components/video-1.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/responsive-1200.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/responsive-992.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/responsive-768.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/responsive-425.css') }}" rel="stylesheet"/>
        <link href="{{ url('css/responsive-320.css') }}" rel="stylesheet"/>
    </head>
    <body class="{{ $intepreter['body']['class'] }}" url="{{url('/beranda')}}">
        {!! $intepreter['body']['navbar'] !!}
        {!! $intepreter['body']['section'] !!}
        {!! $intepreter['body']['footer'] !!}
    </body>
    <script type="text/javascript" src="{{ url('js/library_components/slider-1.js') }}"></script>
    <script type="text/javascript" src="{{ url('js/library_components/slider-2.js') }}"></script>
    <script type="text/javascript" src="{{ url('js/library_components/slider-3.js') }}"></script>
    <script type="text/javascript" src="{{ url('js/library_components/slider-4.js') }}"></script>
    <script type="text/javascript" src="{{ url('js/library_components/video-1.js') }}"></script>
    <script type="text/javascript" src="{{ url('js/custom.js') }}"></script>
    @if(isset($_GET['css_tab']))
    
        @include('render_html.css_tab', $intepreter)
    
    @endif
</html>