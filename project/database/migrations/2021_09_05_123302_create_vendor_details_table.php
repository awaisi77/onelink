<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVendorDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vendor_details', function (Blueprint $table) {
            $table->increments('id');
            $table->string('business_status');
            $table->string('company_name')->nullable();
            $table->string('address_country')->nullable();
            $table->string('address_city')->nullable();
            $table->string('address_state')->nullable();
            $table->string('address_street')->nullable();
            $table->string('business_nature')->nullable();
            $table->string('industry_of_work')->nullable();
            $table->string('company_email')->nullable();
            $table->string('company_website')->nullable();
            $table->string('company_phone')->nullable();
            $table->string('country_of_incorporation')->nullable();
            $table->string('country_of_business')->nullable();
            $table->date('date_of_inception')->nullable();
            $table->string('ntn_strn')->nullable();
            $table->string('parent_company')->nullable();
            $table->string('associated_company')->nullable();
            $table->string('enlisted_on_platform')->nullable();
            $table->string('name_of_platforms')->nullable();
            $table->string('extra_1')->nullable();
            $table->string('extra_2')->nullable();
            $table->string('extra_3')->nullable();
            $table->string('extra_4')->nullable();
            $table->integer('user_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vendor_details');
    }
}
