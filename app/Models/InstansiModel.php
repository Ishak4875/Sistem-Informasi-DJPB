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

    public function detailData($kode_satker)
    {
        return DB::table('tbl_instansi')->where('kode_satker',$kode_satker)->first();
    }

    public function editData($kode_satker,$data)
    {
        DB::table('tbl_instansi')
            ->where('kode_satker',$kode_satker)
            ->update($data);
    }

    public function deleteData($kode_satker)
    {
        DB::table('tbl_instansi')
            ->where('kode_satker',$kode_satker)
            ->delete();
    }

    public function searchKodeSatker($kode_satker)
    {
        return DB::table('tbl_instansi')
            ->where('kode_satker',$kode_satker)
            ->simplePaginate(10);
    }
}