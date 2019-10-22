<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Groups extends Model
{

    protected $table = 'groups';

    protected $fillable = ['name'];

    public function d_pages() {
        return $this->hasMany('App\Pages', 'group');
    }

}
