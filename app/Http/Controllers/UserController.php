<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\DB;
use App\User;
use Spatie\Permission\Models\Role;
use Hash;



class UserController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:user-list');
         $this->middleware('permission:user-create', ['only' => ['view_add','add']]);
         $this->middleware('permission:user-edit', ['only' => ['view_edit','edit']]);
         $this->middleware('permission:user-delete', ['only' => ['delete']]);
    }

    function ApiUserDatatable(){
        $users = User::select(['id', 'name','email','avatar']);
        return Datatables::of($users)
        ->addColumn('avatar',function($user){
            return '<img src="'.asset($user->avatar).'" height="50" width="50" />';

        })
        ->addColumn('action', function ($user) {
            $action="";
            if(\Auth::user()->can("role-edit")){
                $action=$action.'<a href="'.route("user.view_edit",$user->id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a><br><br>';
            }
    
            if(\Auth::user()->can("role-delete")){
                $action=$action.'<button onclick="showAlert(this.id)" id="'.$user->id.'"  class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-remove"></i> Hapus</a>';
            }
            return  $action;
                     
        })
        ->escapeColumns([])
        ->make(true);
    }


    function View(){
        return view("user.list");
    }

    public function view_add()
    {
        $roles = Role::all();
        return view('user.add',compact('roles'));
    }

    public function add(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password',
            'roles' => 'required',
            'avatar' => 'required'

        ]);


        $input = $request->all();
        $input['password'] = Hash::make($input['password']);


        $user = User::create($input);
        $user->assignRole($request->input('roles'));


        return redirect()->route('user.list')
                        ->with('success','User created successfully');
    }

    public function view_edit($id)
    {
        $user = User::find($id);
        $roles = Role::all();
        $user_roles=array();
        $userRole = $user->roles->all();
        foreach($userRole as $user_role){
            array_push($user_roles,$user_role->id);
        }
        return view('user.edit',compact('user','roles','user_roles'));
    }

    public function edit(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'roles' => 'required',
            'avatar' => 'required'

        ]);


        $input = $request->all();
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = array_except($input,array('password'));    
        }


        $user = User::find($id);
        $user->update($input);
        DB::table('model_has_roles')->where('model_id',$id)->delete();


        $user->assignRole($request->input('roles'));


        return redirect()->route('user.list')
                        ->with('success','User updated successfully');
    }


    public function delete($id)
   {
       User::find($id)->delete();
       return response()->json(["success"=>0,"message"=>"Berhasil hapus data !"]);
   }


    //
}
