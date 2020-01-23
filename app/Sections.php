<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sections extends Model
{

    protected $fillable = ['name', 'html_id', 'html_class', 'reference_id', 'sequence', 'pages', 'status'];

    public function m_pages() {
        return $this->belongsTo('App\Pages', 'pages');
    }

    public function d_grids() {
        if($this->reference_id != '')
            return $this->hasMany('App\Grids', 'sections', 'reference_id')
                ->where('status', 1);
        else
            return $this->hasMany('App\Grids', 'sections')
                ->where('status', 1);
    }

}
