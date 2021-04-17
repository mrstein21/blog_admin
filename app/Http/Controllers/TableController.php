<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\DB;

class TableController extends Controller
{
  function __construct()
  {
       $this->middleware('permission:table-list');
       $this->middleware('permission:table-create', ['only' => ['view_add','add']]);
       $this->middleware('permission:table-edit', ['only' => ['view_edit','edit']]);
       $this->middleware('permission:table-delete', ['only' => ['delete']]);
  }

   public function ViewFormAddTable(){
       return view('table.add');
   }

   public function PostAddTable(Request $request){
    $this->validate($request,[
        'table_name' => 'required',
        'capacity' => 'required',

    ]);
    \DB::table("table_restaurant")->insert([
      "table_name"=>$request->table_name,
      "capacity"=>$request->capacity,
      "company_id"=>\Auth::user()->company_id
    ]);
 return redirect()->route('table.list')->with("success","Berhasil menambahkan Meja");
}
   

public function ViewFormEditTable($id){
   $data=\DB::table("table_restaurant")->where("id",$id)->first();
   return view('table.edit',compact('data'));
}

public function PostEditTable(Request $request,$id){
  $this->validate($request,[
    'table_name' => 'required',
    'capacity' => 'required',
  ]);
  
  \DB::table("table_restaurant")->where("id",$id)->update([
    "table_name"=>$request->table_name,
    "capacity"=>$request->capacity
  ]);
  return redirect()->route('table.list')->with("success","Berhasil mengedit Meja");
}

   public function ViewListTable(){
    return view('table.list');
  }

  public function PostDeleteTable($id){
    $topic=\DB::table("table_restaurant")->where("id",$id)->delete();
    return response()->json(["success"=>0,"message"=>"Berhasil hapus data !"]);
  }

   public function TableDataTable(){
    $topic = \DB::table("table_restaurant")->select(['id', 'table_name','capacity']);
    return Datatables::of($topic)
    ->addColumn('action', function ($user) {
      $action="";
      if(\Auth::user()->can("table-edit")){
          $action=$action.'<a href="'.route("table.view_edit",$user->id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a><br><br>';
      }

      if(\Auth::user()->can("table-delete")){
          $action=$action.'<button onclick="showAlert(this.id)" id="'.$user->id.'"  class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-remove"></i> Hapus</a>';
      }
        return  $action;
                 
    })
    ->escapeColumns([])
    ->make(true);
}


}
