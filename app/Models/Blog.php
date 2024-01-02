<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory; 
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{ 
    use HasFactory;
    protected $table = "blogs";
    protected $fillable = [
        'title',
        'author',
        'image',
        'category',
        'content1',
        'content2',
        'content3',
        'img1_vid1',
        'img2_vid2'
    ]; 

    // A blog has many comments
    public function blogComments() {
        return $this->hasMany(BlogComment::class);
    }
}
