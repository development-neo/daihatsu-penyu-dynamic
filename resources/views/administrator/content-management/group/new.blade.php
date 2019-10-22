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
                    <div class="card-title mb-3">Add Category</div>
                    <form class="ajax-form" action="{{ url('api/group/create') }}" method="POST">
                        <div class="row">
                            <div class="col-md-12 form-group mb-3">
                                <label for="name">Category Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Public Name ..">
                            </div>
                            <input type="hidden" name="projects" value="{{ $Projects->id }}">
                        </div>
                        <input type="submit" class="btn btn-raised btn-raised-primary m-1" value="Add Category">
                        <a href="{{ url('administrator/content-management') }}" class="btn btn-outline-primary m-1">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
