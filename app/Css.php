<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Css extends Model
{

    protected $table = 'css';

    protected $fillable = ['projects', 'code'];

    public function m_projects() {
        return $this->belongsTo('App\Projects', 'projects');
    }

    public function d_cssResponsive() {
        return $this->hasMany('App\CssResponsive', 'css', 'id');
    }

}
