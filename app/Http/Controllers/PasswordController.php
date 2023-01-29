<?php

namespace App\Http\Controllers;

use App\Models\PasswordModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class PasswordController extends Controller
{
    public function __construct()
    {
        $this->PasswordModel = new PasswordModel();
    }

    public function getView()
    {
        return view('v_password');
    }

    public function updatePasswrod(Request $request)
    {
        $request->validate([
            'email'=>'required',
            'old_password'=>'required',
            'new_password'=>'required',
            'new_password_confirmation'=>'required'
        ]);

        $email = $request->email;
        $newPassword = $request->new_password;
        $newPasswordConfirmation = $request->new_password_confirmation;
        $oldPassword = $request->old_password;
        $checkOldPassword = $this->PasswordModel->getUsers($email);
        if(Hash::check($oldPassword,$checkOldPassword)){
            var_dump($oldPassword);
            var_dump($checkOldPassword);
            die;
            return back()->with("error","Password Lama Salah");
        }else if($newPassword != $newPasswordConfirmation){
            return back()->with("error","Password Konfirmasi Salah");
        }

        $data = [
            'password'=>Hash::make($newPassword)
        ];

        $this->PasswordModel->updatePassword($email,$data);
        return back()->with("success","Password Berhasil Diperbarui!!!");
    }
}
