<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class post extends Model
{
    protected $guarded = [];
    public function User() {
        return $this->belongsTo('App\User');
    }
    public function post_comment() {
        return $this->hasMany('App\post_comment');
    }
    public function post_like() {
        return $this->hasMany('App\post_like');
    }
}
