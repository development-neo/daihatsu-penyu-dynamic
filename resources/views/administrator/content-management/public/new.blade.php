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
                    <div class="card-title mb-3">Add Publics</div>
                    <form class="ajax-form" action="{{ url('api/publics/create') }}" method="POST">
                        <div class="row">
                            <div class="col-md-12 form-group mb-3">
                                <label for="name">Public Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Public Name ..">
                            </div>
                            <div class="col-md-12 form-group mb-3">
                                <label for="url">Public URL</label>
                                <input type="text" class="form-control" name="url" placeholder="Public URL ..">
                            </div>
                            <div class="col-md-12 form-group mb-3">
                                <label for="meta">Meta Tags</label>
                                <textarea class="form-control" name="meta" placeholder="Meta Tags" style="height: 200px;"></textarea>
                            </div>
                            <div class="col-md-12 form-group mb-3">
                                <label for="parent">Parent</label>
                                <select name="parent" class="form-control">
                                    @if(!empty($Publics))
                                        @foreach($Publics as $publics)
                                        <option value="{{ $publics->id }}">{{ $publics->name }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <input type="hidden" name="projects" value="{{ $Projects->id }}">
                        </div>
                        <input type="submit" class="btn btn-raised btn-raised-primary m-1" value="Create Public">
                        <a href="{{ url('administrator/content-management') }}" class="btn btn-outline-primary m-1">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
