<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PostsGroup extends Model
{

    use SoftDeletes;

    protected $table = 'posts_group';

    protected $fillable = ['name', 'category', 'order_by', 'sort', 'limit', 'additional_column', 'additional_operators', 'additional_value'];

    public function m_category() {
        return $this->belongsTo('App\Category', 'projects', 'id');
    }

}
