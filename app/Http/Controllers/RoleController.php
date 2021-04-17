<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Role;
use Yajra\Datatables\Datatables;

use Spatie\Permission\Models\Permission;
use DB;

class RoleController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:role-list');
         $this->middleware('permission:role-create', ['only' => ['view_add','add']]);
         $this->middleware('permission:role-edit', ['only' => ['view_edit','edit']]);
         $this->middleware('permission:role-delete', ['only' => ['delete']]);
    }

   public function ApiRoleDatatable(Request $request)
   {
    $roles = Role::select(['id', 'name']);
    return Datatables::of($roles)
    ->addColumn('action', function ($role) {
        $action="";
        if(\Auth::user()->can("role-edit")){
            $action=$action.'<a href="'.route("role.view_edit",$role->id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a><br><br>';
        }

        if(\Auth::user()->can("role-delete")){
            $action=$action. '<button onclick="showAlert(this.id)" id="'.$role->id.'"  class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-remove"></i> Hapus</a>';
        }

        return  $action;
    })
    ->escapeColumns([])
    ->make(true);
   }


   public function View(){
       return view("role.list");
   }


   /**
    * Show the form for creating a new resource.
    *
    * @return \Illuminate\Http\Response
    */


    public function view_add(Request $request){
        $permission = Permission::get();
        return view('role.add',compact('permission'));
    }


   /**
    * Store a newly created resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
   public function add(Request $request)
   {
       $this->validate($request, [
           'name' => 'required|unique:roles,name',
           'permission' => 'required',
       ]);


       $role = Role::create(['name' => $request->input('name')]);
       $role->syncPermissions($request->input('permission'));


       return redirect()->route('role.list')
                       ->with('success','Role created successfully');
   }
   /**
    * Display the specified resource.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
//    public function view_edit($id)
//    {
//        $role = Role::find($id);
//        $rolePermissions = Permission::join("role_has_permissions","role_has_permissions.permission_id","=","permissions.id")
//            ->where("role_has_permissions.role_id",$id)
//            ->get();


//        return view('role.edit',compact('role','rolePermissions'));
//    }


   /**
    * Show the form for editing the specified resource.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
   public function view_edit($id)
   {
       $role = Role::find($id);
       $permission = Permission::get();
       $rolePermissions = DB::table("role_has_permissions")->where("role_has_permissions.role_id",$id)
           ->get();

        $role_permission=array();
        foreach($rolePermissions as $rolePermission){
            array_push($role_permission,$rolePermission->permission_id);
        }


       return view('role.edit',compact('role','permission','role_permission'));
   }


   /**
    * Update the specified resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
   public function edit(Request $request, $id)
   {
       $this->validate($request, [
           'name' => 'required',
           'permission' => 'required',
       ]);


       $role = Role::find($id);
       $role->name = $request->input('name');
       $role->save();


       $role->syncPermissions($request->input('permission'));


       return redirect()->route('role.list')
                       ->with('success','Role updated successfully');
   }
   /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
   public function delete($id)
   {
       DB::table("roles")->where('id',$id)->delete();
       return response()->json(["success"=>0,"message"=>"Berhasil hapus data !"]);

   }
    //
}
