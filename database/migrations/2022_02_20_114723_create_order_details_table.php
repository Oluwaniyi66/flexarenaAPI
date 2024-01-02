<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */ 
    public function up()
    {
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->string('product_id');
            $table->string('customer_first_name');
            $table->string('customer_last_name');
            $table->string('customer_phone_num');
            $table->string('customer_email');
            $table->string('customer_address');
            $table->string('customer_city');
            $table->string('customer_country');
            $table->string('customer_postal_code');
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
        Schema::dropIfExists('order_details');
    }
}
