<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class ImageController extends Controller
{

    public function ViewImage($id){
         $data=\DB::table("menu")->where("id",$id)->first();
         $avatar_path = $data->image;
        //  return substr($avatar_path,1);
         if (File::exists(substr($avatar_path,1))) {
               $file = file_get_contents(substr($avatar_path,1));
               return response($file, 200)->header('Content-Type', 'image/jpeg');
         }
        $file= file_get_contents('assets/download.png'); 
        return response($file, 200)->header('Content-Type', 'image/jpeg');       
     }
    //
}
