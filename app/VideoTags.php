<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VideoTags extends Model
{
    protected $table = 'video_tags';
    public $fillable=["article_id","topic_id"];
    public $timestamps=false;

    public function video(){
        return $this->belongsTo("App\Video")->select(array('id', 'title','description',"youtube_key",'user_id','created_at'));
    }

    public function topics()
    {
        return $this->belongsTo("App\Topic","topic_id");
    }
    //
}
