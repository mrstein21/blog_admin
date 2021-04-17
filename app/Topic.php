<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    protected $table="topic";
    public $fillable=["id","topic_name","cover"];
    public $timestamps=false;

    //
}
