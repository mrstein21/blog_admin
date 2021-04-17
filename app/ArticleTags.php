<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ArticleTags extends Model
{
    //
    protected $table = 'article_tags';
    public $fillable=["article_id","topic_id"];
    public $timestamps=false;

    public function article(){
        return $this->belongsTo("App\Article")->select(array('id', 'title', 'short_description','image','user_id','created_at'));
    }

    public function topics()
    {
        return $this->belongsTo("App\Topic","topic_id");
    }


}
