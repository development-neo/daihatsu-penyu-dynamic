<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Components extends Model
{

    protected $fillable = ['name', 'html_id', 'html_class', 'content', 'library_component', 'type_component', 'sequence', 'grids'];

    public function m_grids() {
        return $this->belongsTo('App\Grids', 'grids');
    }

}
