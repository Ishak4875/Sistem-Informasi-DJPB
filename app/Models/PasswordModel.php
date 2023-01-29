<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class PasswordModel extends Model
{
    public function getUsers($email)
    {
        return DB::table('users')
            ->where('email',$email)
            ->value('password');
    }

    public function updatePassword($email,$data)
    {
        DB::table('users')
            ->where('email',$email)
            ->update($data);
    }
}
