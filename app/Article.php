<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table = 'article';
    public $fillable=["title","image","short_description","content","user_id"];

    public function tags(){
        return $this->hasMany("App\ArticleTags");
    }

    public function author()
    {
        return $this->belongsTo("App\User","user_id")->select(array('id','name','avatar'));
    }

    //
}
