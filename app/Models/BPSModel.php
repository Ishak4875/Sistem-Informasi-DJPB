<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class BPSModel extends Model
{
    public function allDataInstansi($id_instansi)
    {
        return DB::table('tbl_analisis_lk')
            ->leftJoin('tbl_pertanyaan_analisis_lk','tbl_pertanyaan_analisis_lk.id_pertanyaan', '=', 'tbl_analisis_lk.id_pertanyaan')
            ->where('id_instansi',$id_instansi)
            ->get();
    }

    public function editData($id_jawaban,$data)
    {
        DB::table('tbl_analisis_lk')
            ->where('id_jawaban',$id_jawaban)
            ->update($data);
    }

    public function getSubQuestion()
    {
        return DB::table('tbl_sub_pertanyaan_analisis_lk')
            ->get();
    }
}
