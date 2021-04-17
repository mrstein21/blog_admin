<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    public $fillable=["nama","judul","cover","tags","deskripsi","kontent","user_id"];
    //
}
