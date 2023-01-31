<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class LRAModel extends Model
{
    public function getLRA($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra)
    {
        return DB::table('tbl_lra')
            ->join('tbl_pertanyaan_lra','tbl_pertanyaan_lra.id_pertanyaan_lra','=','tbl_lra.id_pertanyaan_lra')
            ->join('tbl_sub_pertanyaan_lra','tbl_sub_pertanyaan_lra.id_sub_lra','=','tbl_pertanyaan_lra.id_sub_lra')
            ->where('tbl_lra.kode_satker',$kode_satker)
            ->where('tbl_pertanyaan_lra.id_sub_lra',$id_sub_pertanyaan_lra)
            ->where('tbl_sub_pertanyaan_lra.id_sub_sub_pertanyaan_lra',$id_sub_sub_pertanyaan_lra)
            ->get();
    }

    public function updateLRA($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra,$id_jawaban_lra,$data)
    {
        DB::table('tbl_lra')
            ->join('tbl_pertanyaan_lra','tbl_pertanyaan_lra.id_pertanyaan_lra','=','tbl_lra.id_pertanyaan_lra')
            ->join('tbl_sub_pertanyaan_lra','tbl_sub_pertanyaan_lra.id_sub_lra','=','tbl_pertanyaan_lra.id_sub_lra')
            ->where('tbl_lra.kode_satker',$kode_satker)
            ->where('tbl_pertanyaan_lra.id_sub_lra',$id_sub_pertanyaan_lra)
            ->where('tbl_sub_pertanyaan_lra.id_sub_sub_pertanyaan_lra',$id_sub_sub_pertanyaan_lra)
            ->where('tbl_lra.id_jawaban_lra',$id_jawaban_lra)
            ->update($data);
    }

    public function updateLRATotal($id_sub_lra,$kode_satker,$data)
    {
        DB::table('tbl_total_lra')
            ->where('kode_satker',$kode_satker)
            ->where('id_sub_lra',$id_sub_lra)
            ->update($data);
    }

    public function editLRA($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra,$id_jawaban_lra)
    {
        return DB::table('tbl_lra')
            ->join('tbl_pertanyaan_lra','tbl_pertanyaan_lra.id_pertanyaan_lra','=','tbl_lra.id_pertanyaan_lra')
            ->join('tbl_sub_pertanyaan_lra','tbl_sub_pertanyaan_lra.id_sub_lra','=','tbl_pertanyaan_lra.id_sub_lra')
            ->where('tbl_lra.id_jawaban_lra',$id_jawaban_lra)
            ->where('tbl_lra.kode_satker',$kode_satker)
            ->where('tbl_pertanyaan_lra.id_sub_lra',$id_sub_pertanyaan_lra)
            ->where('tbl_sub_pertanyaan_lra.id_sub_sub_pertanyaan_lra',$id_sub_sub_pertanyaan_lra)
            ->first();
    }

    public function getSumLembarMuka($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra)
    {
        return DB::table('tbl_lra')
            ->select(DB::raw('sum(lembar_muka) as sum_lembar_muka'))
            ->join('tbl_pertanyaan_lra','tbl_pertanyaan_lra.id_pertanyaan_lra','=','tbl_lra.id_pertanyaan_lra')
            ->join('tbl_sub_pertanyaan_lra','tbl_sub_pertanyaan_lra.id_sub_lra','=','tbl_pertanyaan_lra.id_sub_lra')
            ->where('tbl_lra.kode_satker',$kode_satker)
            ->where('tbl_pertanyaan_lra.id_sub_lra',$id_sub_pertanyaan_lra)
            ->where('tbl_sub_pertanyaan_lra.id_sub_sub_pertanyaan_lra',$id_sub_sub_pertanyaan_lra)
            ->value('sum_lembar_muka');
    }

    public function getSumLKAplikasi($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra)
    {
        return DB::table('tbl_lra')
            ->select(DB::raw('sum(lk_aplikasi) as sum_lk_aplikasi'))
            ->join('tbl_pertanyaan_lra','tbl_pertanyaan_lra.id_pertanyaan_lra','=','tbl_lra.id_pertanyaan_lra')
            ->join('tbl_sub_pertanyaan_lra','tbl_sub_pertanyaan_lra.id_sub_lra','=','tbl_pertanyaan_lra.id_sub_lra')
            ->where('tbl_lra.kode_satker',$kode_satker)
            ->where('tbl_pertanyaan_lra.id_sub_lra',$id_sub_pertanyaan_lra)
            ->where('tbl_sub_pertanyaan_lra.id_sub_sub_pertanyaan_lra',$id_sub_sub_pertanyaan_lra)
            ->value('sum_lk_aplikasi');
    }

    public function getSumCalk($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra)
    {
        return DB::table('tbl_lra')
            ->select(DB::raw('sum(calk) as sum_calk'))
            ->join('tbl_pertanyaan_lra','tbl_pertanyaan_lra.id_pertanyaan_lra','=','tbl_lra.id_pertanyaan_lra')
            ->join('tbl_sub_pertanyaan_lra','tbl_sub_pertanyaan_lra.id_sub_lra','=','tbl_pertanyaan_lra.id_sub_lra')
            ->where('tbl_lra.kode_satker',$kode_satker)
            ->where('tbl_pertanyaan_lra.id_sub_lra',$id_sub_pertanyaan_lra)
            ->where('tbl_sub_pertanyaan_lra.id_sub_sub_pertanyaan_lra',$id_sub_sub_pertanyaan_lra)
            ->value('sum_calk');
    }

    public function getSubLRA($sub_sub_pertanyaan_lra,$kode_satker)
    {
        return DB::table('tbl_sub_pertanyaan_lra')
            ->join('tbl_total_lra','tbl_total_lra.id_sub_lra','=','tbl_sub_pertanyaan_lra.id_sub_lra')
            ->where('id_sub_sub_pertanyaan_lra',$sub_sub_pertanyaan_lra)
            ->where('tbl_total_lra.kode_satker',$kode_satker)
            ->get();
    }

    public function getSubSubLRA()
    {
        return DB::table('tbl_sub_sub_pertanyaan_lra')
            ->get();
    }
}
