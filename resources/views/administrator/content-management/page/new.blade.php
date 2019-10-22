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
                    <div class="card-title mb-3">Add Page</div>
                    <form class="ajax-form" action="{{ url('api/publics/create') }}" method="POST">
                        <div class="row">
                            <div class="col-md-12 form-group mb-3">
                                <label for="name">Page Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Page Name ..">
                            </div>
                            <div class="col-md-12 form-group mb-3">
                                <label for="url">Features Images</label>
                                <input type="file" class="form-control" name="features_images"/>
                            </div>
                            <div class="col-md-12 form-group mb-3">
                                <label for="meta">Description</label>
                                <textarea class="form-control" name="description" placeholder="Description .." style="height: 200px;"></textarea>
                            </div>
                            <div class="col-md-12 form-group mb-3">
                                <label for="parent">Category</label>
                                <select name="parent" class="form-control">
                                    @if(!empty($Publics))
                                        @foreach($Publics as $publics)
                                        <option value="{{ $publics->id }}">{{ $publics->name }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="col-md-12 form-group mb-3">
                                <label for="meta">Page :</label>
                                <label class="radio radio-success">
                                    <input type="radio" name="radio" name="is_index" value="1" checked>
                                    <span>Index</span>
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio radio-success">
                                    <input type="radio" name="radio" name="is_index" value="0">
                                    <span>Detail</span>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <input type="hidden" name="projects" value="{{ $Projects->id }}">
                        </div>
                        <input type="submit" class="btn btn-raised btn-raised-primary m-1" value="Create Public">
                        <a href="{{ url($_SERVER['HTTP_REFERER']) }}" class="btn btn-outline-primary m-1">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
