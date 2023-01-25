<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class SheetModel extends Model
{
    public function getSheet($id_instansi)
    {
        return DB::table('tbl_sheet')
            ->where('id_instansi',$id_instansi)
            ->get();
    }
}
