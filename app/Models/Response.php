<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Response extends Model
{
    protected $fillable = [
        'message_id',
        'content',
        'user_ip'
    ];
}
