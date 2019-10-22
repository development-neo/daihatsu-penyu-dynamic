@extends('administrator.layouts.app')

@section('content')

    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif

    @if($Projects)

    <div class="row">

        <div class="col-md-12 mb-4">
            <h2>{{ ucfirst($Projects->name) }}</h2>
            <a href="{{ url('administrator/content-management/publics/'. $Projects->id .'/add') }}" class="btn btn-primary btn-rounded">Add Public</a>
            <a href="#groupsCard" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="groupsCard" class="btn btn-primary btn-rounded">Pages Groups</a>
        </div>
        
        <div class="col-md-12 mb-4">
            <div class="collapse" id="groupsCard">
                <div class="card mb-4 o-hidden">
                    <div class="card-body">

                        @if(count($Groups) > 0)

                            @foreach($Groups as $key => $temp)

                            <span class="badge badge-pill badge-outline-warning p-2 m-1">{{ $temp->name }}</span>

                            @endforeach

                        @endif

                        <a href="{{ url('administrator/content-management/groups/add') }}" class="btn btn-outline-primary m-1 btn-rounded">Add</a>
                    </div>
                </div>
            </div>
        </div>

        @if(count($Publics) > 0)

            @foreach($Publics as $key => $publics)

                <div class="col-md-3">
                    <div class="card mb-4 o-hidden">
                        <img class="card-img-top" src="./assets/images/photo-wide-2.jpg" alt="">
                        <div class="card-body">
                            <h5 class="card-title m-0">{{ $publics->name }}</h5>
                            <p class="card-text">
                                {{ $publics->url }}
                            </p>
                            <a href="{{ url('administrator/content-management/publics/'.$Projects->id.'/view/'.$publics->id) }}" class="btn btn-primary btn-rounded">View</a>
                            <a class="btn btn-primary btn-rounded" data-toggle="collapse" href="#{{ 'collapse-'.$key }}" role="button" aria-expanded="false" aria-controls="{{ 'collapse-'.$key }}">Sub</a>
                            <a class="btn btn-primary btn-rounded" href="#">Edit</a>
                        </div>
                        <ul class="list-group list-group-flush">

                        </ul>
                        <div class="collapse" id="{{ 'collapse-'.$key }}">
                            <div class="card-body">

                                @if($publics->my_child()->get())

                                    @if(count($publics->my_child()->get()) > 0)

                                        @foreach($publics->my_child()->get() as $key => $my_child)

                                        <div class="col-md-12" style="padding: 0px">
                                            <div class="card mb-4 o-hidden">
                                                <div class="card-body">
                                                    <h5 class="card-title m-0">{{ $my_child->name }}</h5>
                                                    <p class="card-text">
                                                        {{ $publics->url.'/'.$my_child->url }}
                                                    </p>
                                                    <a href="{{ url('administrator/content-management/publics/'.$Projects->id.'/view/'.$my_child->id) }}" class="btn btn-primary btn-rounded">View</a>
                                                </div>
                                            </div>
                                        </div>

                                        @endforeach
                                    
                                    @endif

                                @endif

                                <a href="{{ url('administrator/content-management/publics/'.$Projects->id.'/view/') }}" class="btn btn-outline-primary m-1 btn-rounded btn-block">Add</a>

                            </div>
                        </div>
                    </div>
                </div>
            
            @endforeach

        @endif

    </div>
    
    @else

    <div class="card mb-4">
        <div class="card-header">
            New Project
        </div>
        <div class="card-body">
            <h5 class="card-title">Good Start !</h5>
            <p class="card-text">Make a project to start developing your website !
            </p>
            <a href="{{ url('administrator/content-management/project/new') }}" class="btn btn-primary btn-rounded">Create Project</a>
        </div>
    </div>    

    @endif

@endsection
