@extends('administrator.layouts.app')

@section('content')

    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif

    <div class="row">
        <div class="col-md-12 mb-4">
            <h2>Publics | {{ $Publics->name }}</h2>
            <a href="{{ url('administrator/content-management/publics/'.$Projects->id.'/page/'.$Publics->id.'/add') }}" class="btn btn-primary btn-rounded">Add Page</a>
            <a href="{{ url('administrator/content-management/publics/edit/'.$Publics->id) }}" class="btn btn-primary btn-rounded">Edit Public</a>

        </div>
        <div class="col-md-6">
            <h5>Index</h5>
            <div class="card mb-3">
                <img class="card-img-top" src="{{ url('administrator/assets/images/photo-wide-2.jpg') }}" alt="">
                <div class="card-body">
                    <h5 class="m-0">Jassica Hike</h5>
                    <p class="mt-0">UI/UX Designer</p>
                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras metus justo, iaculis ac sodales nec, congue eu tortor. Vestibulum vulputate commodo pulvinar. Nam facilisis interdum augue, ultrices porttitor risus luctus in. Nam ultrices tortor non nulla bibendum, non ultrices diam dapibus. Donec ac sapien interdum, efficitur lorem eget, iaculis nulla. Vestibulum ut ligula convallis nisi mattis finibus eget quis dolor. Duis in lectus at orci ornare semper. Phasellus eu enim id magna pharetra pellentesque ac quis nisl. Integer dignissim dapibus mi eu feugiat. Proin ultricies leo ut pellentesque imperdiet. In scelerisque lectus sit amet luctus porttitor.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <h5>Detail</h5>
            @for($i = 0; $i < 7; $i++)
                <div class="card mb-3">
                    <img class="card-img-top" src="{{ url('administrator/assets/images/photo-wide-2.jpg') }}" alt="" style="width: 30%; height: 150px; border-radius: 0px; position: absolute; left: 0px;">
                    <div class="card-body" style="padding-left: 200px; height: 150px; overflow: hidden;">
                        <h5 class="m-0">Jassica Hike</h5>
                        <p class="mt-0">UI/UX Designer</p>
                    </div>
                </div>
            @endfor
        </div>
    </div>

@endsection
