<html>
    <head>
    
        {!! $intepreter['head']['meta'] !!}
    
    </head>
    <body>

        {!! $intepreter['head']['css']['main'] !!}

        <style type="text/css">

            {!! $intepreter['head']['css']['library_component'] !!}

        </style>

        {!! $intepreter['body']['navbar'] !!}

        {!! $intepreter['body']['section'] !!}

        {!! $intepreter['body']['footer'] !!}

    </body>

    {!! $intepreter['footer']['javascript'] !!}

    @if(isset($_GET['css_tab']))
    
        @include('render_html.css_tab', $intepreter)
    
    @endif

</html>