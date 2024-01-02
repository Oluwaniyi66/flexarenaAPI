<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlogComment extends Model
{
    use HasFactory;
    protected $table = 'blog_comments';
    protected $fillable = [
        'blog_id',
        'name',
        'email',
        'comment'
    ];

    // A comment belongs to one blog
    public function commentBlog() {
        return $this->belongsTo(Blog::class);
    }
}
