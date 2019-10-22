@extends('administrator.layouts.app')

@section('content')

    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif

    <div class="row">
        <div class="col-md-12">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="card-title mb-3" data-name="">{{ $Projects->name }}
                    <button type="button" data-toggle="modal" data-target="#updateModalContent" class="btn round btn-raised btn-raised-warning btn-icon rounded-circle m-1">
                        <span class="ul-btn__icon"><i class="i-Edit"></i></span>
                    </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Verify Modal content -->
    <div class="modal fade" id="updateModalContent" tabindex="-1" role="dialog" aria-labelledby="updateModalContent" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalContent_title">Edit Project</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="recipient-name-2" class="col-form-label">Name :</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Update</button>
                </div>
            </div>
        </div>
    </div>

@endsection
