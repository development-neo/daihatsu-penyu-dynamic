<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostsGroup extends Model
{

    protected $table = 'posts_group';

    protected $fillable = ['name', 'category', 'order_by', 'sort', 'limit', 'additional_column', 'additional_operartors', 'additional_value'];

    public function m_category() {
        return $this->belongsTo('App\Category', 'projects', 'id');
    }

}
