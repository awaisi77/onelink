<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $guarded =[];

    public function vendorDetail(){
        return $this->belongsTo('App/VendorDetail','vendor_details_id','id');
    }
}
