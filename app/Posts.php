<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Posts extends Model
{

    use SoftDeletes;

    protected $table = 'posts';
    protected $text_status = [
        'draft',
        'published',
    ];

    protected $fillable = ['title', 'caption', 'content', 'tags', 'date', 'category', 'image'];

    public function m_category() {
        return $this->belongsTo('App\Category', 'category', 'id');
    }

    public function m_status_name() {
        return $this->text_status[$this->status];
    }

}
