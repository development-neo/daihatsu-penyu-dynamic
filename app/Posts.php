<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{

    protected $table = 'posts';

    protected $fillable = ['title', 'caption', 'content', 'tags', 'date', 'category', 'image'];

    public function m_category() {
        return $this->belongsTo('App\Category', 'projects', 'id');
    }

}
