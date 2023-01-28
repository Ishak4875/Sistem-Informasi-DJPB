<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class PegawaiModel extends Model
{
    public function detailPegawai($id_satker)
    {
        return DB::table('tbl_data_pegawai')
            ->where('kode_satker',$id_satker)
            ->first();
    }

    public function editPegawai($id_satker,$data)
    {
        DB::table('tbl_data_pegawai')
            ->where('kode_satker',$id_satker)
            ->update($data);
    }
}
