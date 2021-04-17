<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    protected $table = 'video';
    public $fillable=["title","youtube_key","description","user_id"];

    public function tags(){
        return $this->hasMany("App\VideoTags");
    }

    public function author()
    {
        return $this->belongsTo("App\User","user_id")->select(array('id','name','avatar'));
    }
}
