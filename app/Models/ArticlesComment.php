<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class ArticlesComment extends Model
{

    protected $fillable = [
        'message',
        'noms',
        'article_id'
    ];

}
