<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WorldCountry extends Model
{
    protected $table ='world_countries';

    public function states(){
        return $this->hasMany('App\State','country_id','id');
    }
}
