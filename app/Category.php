<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{

    use SoftDeletes;
    
    protected $table = 'category';

    protected $fillable = ['name'];

    public function d_posts() {
        return $this->hasMany('App\Posts', 'category', 'id');
    }

}
