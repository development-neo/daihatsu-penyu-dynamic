<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pages extends Model
{

    protected $fillable = ['name', 'features_images', 'description', 'type', 'group', 'parent', 'status', 'published_at'];

    public function m_categories() {
        return $this->belongsTo('App\Categories', 'id', 'categories');
    }

    public function m_publics() {
        return $this->belongsTo('App\Publics', 'id', 'pages');
    }

    public function d_sections() {
        return $this->hasMany('App\Sections', 'pages', 'id');
    }

    public function my_child() {
        return $this->hasMany('App\Pages', 'parent', 'id');
    }
    
    public function my_parent() {
        return $this->belongsTo('App\Pages', 'id', 'parent');
    }
    
    public function my_group() {
        return $this->belongsTo('App\Groups', 'id', 'group');
    }

}
