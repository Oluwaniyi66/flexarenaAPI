<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    use HasFactory;
    protected $table = 'order_details';
    protected $fillable = [
        'product_id',
        'customer_first_name',
        'customer_last_name',
        'customer_phone_num',
        'customer_email',
        'customer_address',
        'customer_city',
        'customer_country',
        'customer_postal_code'
    ];
}
