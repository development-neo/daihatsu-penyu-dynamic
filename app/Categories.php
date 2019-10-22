<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{

    protected $table = 'categories';

    protected $fillable = ['name'];

    public function d_pages() {
        return $this->hasMany('App\Pages', 'id', 'pages');
    }

}
