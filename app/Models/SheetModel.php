<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class SheetModel extends Model
{
    public function getSheet($kode_satker)
    {
        return DB::table('tbl_sheet')
            ->where('kode_satker',$kode_satker)
            ->get();
    }
}
