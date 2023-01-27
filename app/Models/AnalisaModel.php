<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class AnalisaModel extends Model
{
    public function getSubSubAnalisaPertanyaan($id_instansi)
    {
        return DB::table('tbl_sub_sub_pertanyaan_analisis_lk')
            ->where('id_instansi',$id_instansi)
            ->get();
    }

    public function getSubAnalisaPertanyaan($id_instansi,$id_sub_sub)
    {
        return DB::table('tbl_sub_sub_pertanyaan_analisis_lk')
            ->leftJoin('tbl_sub_pertanyaan_analisis_lk','tbl_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan','=','tbl_sub_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan')
            ->where('tbl_sub_sub_pertanyaan_analisis_lk.id_instansi',$id_instansi)
            ->where('tbl_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan',$id_sub_sub)
            ->get();
    }

    public function getAnalisaPertanyaan($id_instansi,$id_sub)
    {
        return DB::table('tbl_analisis_lk')
            ->join('tbl_sub_sub_pertanyaan_analisis_lk','tbl_sub_sub_pertanyaan_analisis_lk.id_instansi','=','tbl_analisis_lk.id_instansi')
            ->join('tbl_sub_pertanyaan_analisis_lk','tbl_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan','=','tbl_sub_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan')
            ->join('tbl_pertanyaan_analisis_lk','tbl_pertanyaan_analisis_lk.id_sub','=','tbl_sub_pertanyaan_analisis_lk.id_sub')
            ->where('tbl_sub_sub_pertanyaan_analisis_lk.id_instansi',$id_instansi)
            ->where('tbl_sub_pertanyaan_analisis_lk.id_sub',$id_sub)
            ->whereColumn('tbl_analisis_lk.id_pertanyaan','tbl_pertanyaan_analisis_lk.id_pertanyaan')
            ->get();
    }

    public function updateKondisiLK($id_instansi,$id_sub,$id_jawaban,$data)
    {
        DB::table('tbl_analisis_lk')
            ->join('tbl_sub_sub_pertanyaan_analisis_lk','tbl_sub_sub_pertanyaan_analisis_lk.id_instansi','=','tbl_analisis_lk.id_instansi')
            ->join('tbl_sub_pertanyaan_analisis_lk','tbl_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan','=','tbl_sub_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan')
            ->join('tbl_pertanyaan_analisis_lk','tbl_pertanyaan_analisis_lk.id_sub','=','tbl_sub_pertanyaan_analisis_lk.id_sub')
            ->where('tbl_sub_sub_pertanyaan_analisis_lk.id_instansi',$id_instansi)
            ->where('tbl_sub_pertanyaan_analisis_lk.id_sub',$id_sub)
            ->where('tbl_analisis_lk.id_jawaban',$id_jawaban)
            ->whereColumn('tbl_analisis_lk.id_pertanyaan','tbl_pertanyaan_analisis_lk.id_pertanyaan')
            ->update($data);
    }

    public function getAvgBobot($id_instansi,$id_sub_sub_pertanyaan)
    {
        return DB::table('tbl_analisis_lk')
            ->select(DB::raw('avg(bobot) as avgBobot'))
            ->join('tbl_sub_sub_pertanyaan_analisis_lk','tbl_sub_sub_pertanyaan_analisis_lk.id_instansi','=','tbl_analisis_lk.id_instansi')
            ->join('tbl_sub_pertanyaan_analisis_lk','tbl_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan','=','tbl_sub_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan')
            ->join('tbl_pertanyaan_analisis_lk','tbl_pertanyaan_analisis_lk.id_sub','=','tbl_sub_pertanyaan_analisis_lk.id_sub')
            ->where('tbl_sub_sub_pertanyaan_analisis_lk.id_instansi',$id_instansi)
            ->where('tbl_sub_pertanyaan_analisis_lk.id_sub_sub_pertanyaan',$id_sub_sub_pertanyaan)
            ->whereColumn('tbl_analisis_lk.id_pertanyaan','tbl_pertanyaan_analisis_lk.id_pertanyaan')
            ->get();
    }

    public function getPersen($id_instansi,$id_sub_sub_pertanyaan)
    {
        return DB::table('tbl_sub_sub_pertanyaan_analisis_lk')
            ->where('id_instansi',$id_instansi)
            ->where('id_sub_sub_pertanyaan',$id_sub_sub_pertanyaan)
            ->value('persen');
    }

    public function updateNilai($id_instansi,$id_sub_sub_pertanyaan,$data)
    {
        DB::table('tbl_sub_sub_pertanyaan_analisis_lk')
            ->where('id_instansi',$id_instansi)
            ->where('id_sub_sub_pertanyaan',$id_sub_sub_pertanyaan)
            ->update($data);
    }

    public function getTotalSkor($id_instansi)
    {
        return DB::table('tbl_sub_sub_pertanyaan_analisis_lk')
            ->selectRaw(DB::raw('sum(nilai) as totalNilai'))
            ->where('id_instansi',$id_instansi)
            ->value('totalNilai');
    }

    public function updateTotalSkor($id_instansi,$sheet,$data)
    {
        DB::table('tbl_sheet')
            ->where('sheet',$sheet)
            ->where('id_instansi',$id_instansi)
            ->update($data);
    }
}
