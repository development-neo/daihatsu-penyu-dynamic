@extends('administrator.layouts.app')

@section('content')

    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif

    <div class="row">
        <div class="col-md-6">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="card-title mb-3">Create new project</div>
                    <form class="ajax-form" action="{{ url('api/projects/create') }}" method="POST">
                        <div class="row">
                            <div class="col-md-12 form-group mb-3">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter your project name">
                            </div>
                        </div>
                        <input type="submit" class="btn btn-raised btn-raised-primary m-1" value="Create Project">
                        <a href="{{ url('administrator/content-management') }}" class="btn btn-outline-primary m-1">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
