<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Hash;
use Illuminate\Support\Facades\DB;
use App\User;


class ProfileController extends Controller
{

    public function view_update(){
        return view("profile.update");
    }
    
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'avatar' => 'required',
            'password' => 'same:confirm-password',            
        ]);


        $input = $request->all();
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = array_except($input,array('password'));    
        }


        $user = User::find($id);
        $user->update($input);

        return redirect()->route('profile.view_update')
                        ->with('success','User updated successfully');
    }

    //
}
