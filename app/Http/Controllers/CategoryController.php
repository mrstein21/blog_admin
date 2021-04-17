<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
  function __construct()
  {
       $this->middleware('permission:category-list');
       $this->middleware('permission:category-create', ['only' => ['view_add','add']]);
       $this->middleware('permission:category-edit', ['only' => ['view_edit','edit']]);
       $this->middleware('permission:category-delete', ['only' => ['delete']]);
  }

   public function ViewFormAddCategory(){
       return view('category.add');
   }

   public function PostAddCategory(Request $request){
    $this->validate($request,[
        'name' => 'required',
    ]);
    \DB::table("topic")->insert([
      "name"=>$request->name,
      "cover"=>$request->cover,
      "company_id"=>\Auth::user()->company_id
    ]);
 return redirect()->route('category.list')->with("success","Berhasil menambahkan kategori");
}
   

public function ViewFormEditCategory($id){
   $data=\DB::table("topic")->where("id",$id)->first();
   return view('category.edit',compact('data'));
}

public function PostEditCategory(Request $request,$id){
  $this->validate($request,[
    'name' => 'required',
  ]);
  
  \DB::table("topic")->where("id",$id)->update([
    "name"=>$request->name,
    "cover"=>$request->cover
  ]);
  return redirect()->route('category.list')->with("success","Berhasil mengedit kategori");
}

   public function ViewListCategory(){
    return view('category.list');
  }

  public function PostDeleteCategory($id){
    $topic=\DB::table("topic")->where("id",$id)->delete();
    return response()->json(["success"=>0,"message"=>"Berhasil hapus data !"]);
  }

   public function CategoryDataTable(){
    $topic = \DB::table("topic")->select(['id', 'name','cover']);
    return Datatables::of($topic)
    ->addColumn('cover',function($user){
        return '<img src="'.asset($user->cover).'" height="50" width="50" />';

    })
    ->addColumn('action', function ($user) {
      $action="";
      if(\Auth::user()->can("category-edit")){
          $action=$action.'<a href="'.route("category.view_edit",$user->id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a><br><br>';
      }

      if(\Auth::user()->can("category-delete")){
          $action=$action.'<button onclick="showAlert(this.id)" id="'.$user->id.'"  class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-remove"></i> Hapus</a>';
      }
        return  $action;
                 
    })
    ->escapeColumns([])
    ->make(true);
}


}
