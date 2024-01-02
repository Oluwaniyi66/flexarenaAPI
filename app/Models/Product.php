<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table = "products";
    protected $fillable = [
        'name',
        'price',
        'discount',
        'image',
        'category',
        'long_desc',
        'short_desc',
        'img_alt1',
        'img_alt2',
        'img_alt3',
        'video',
        'status1',
        'status2',
        'status3',
        'status4',
        'status5'
    ];
}
