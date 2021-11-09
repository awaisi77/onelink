<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VendorDetail extends Model
{
    protected $fillable = [

        'business_status',
        'company_name',
        'address_country',
        'address_city',
        'address_state',
        'address_street',
        'business_nature',
        'industry_of_work',
        'company_email',
        'company_website',
        'company_phone',
        'country_of_incorporation',
        'country_of_business',
        'date_of_inception',
        'ntn_strn',
        'parent_company',
        'associated_company',
        'associated_company',
        'enlisted_on_platform',
        'name_of_platforms',
        'user_id'
    ];

    public function user(){
        return $this->hasOne('App/Models/User','user_id','id');
    }

    public function contact(){
        return $this->belongsTo('App/Contact','vendor_details_id','id');
    }




}
