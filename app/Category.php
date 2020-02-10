<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    protected $table = 'category';

    protected $fillable = ['name'];

    public function d_posts() {
        return $this->hasMany('App\Posts', 'category', 'id');
    }

}
