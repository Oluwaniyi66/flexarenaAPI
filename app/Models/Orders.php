<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    use HasFactory;
    protected $table = 'orders';
    protected $fillable = [
        'user_id',
        'product_id',
        'product_price',
        'product_qty',
        'product_total',
        'reference_num',
        'transaction_num',
        'product_status'
    ];
}
