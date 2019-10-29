<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class post_comment extends Model
{
    protected $guarded = [];
    public function User() {
        return $this->belongsTo('App\User');
    }
    public function post() {
        return $this->belongsTo('App\post');
    }
}
