<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class InstansiModel extends Model
{
    public function allData()
    {
        return DB::table('tbl_instansi')->simplePaginate(10);
    }

    public function detailData($id_instansi)
    {
        return DB::table('tbl_instansi')->where('id_instansi',$id_instansi)->first();
    }

    public function editData($id_instansi,$data)
    {
        DB::table('tbl_instansi')
            ->where('id_instansi',$id_instansi)
            ->update($data);
    }

    public function deleteData($id_instansi)
    {
        DB::table('tbl_instansi')
            ->where('id_instansi',$id_instansi)
            ->delete();
    }

    public function searchKodeSatker($kode_satker)
    {
        return DB::table('tbl_instansi')
            ->where('kode_satker',$kode_satker)
            ->get();
    }
}