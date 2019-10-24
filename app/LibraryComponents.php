<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LibraryComponents extends Model
{

    protected $table = 'library_components';

    protected $fillable = ['name', 'css', 'javascript'];

    public function d_components() {
        return $this->hasMany('App\Components', 'library_component');
    }

}
