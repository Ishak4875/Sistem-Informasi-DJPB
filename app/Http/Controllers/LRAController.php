<?php

namespace App\Http\Controllers;

use App\Models\LRAModel;
use Illuminate\Http\Request;

class LRAController extends Controller
{
    public function __construct()
    {
        $this->LRAModel = new LRAModel();
    }

    public function getSubLRA(Request $request)
    {
        $kode_satker = $request->kode_satker;
        $sub_sub_pertanyaan_lra = $request->sub_sub_pertanyaan_lra;
        $data = [
            'sublra'=>$this->LRAModel->getSubLRA($sub_sub_pertanyaan_lra,$kode_satker),
            'kode_satker'=>$kode_satker
        ];

        return view('v_sublra',$data);
    }

    public function getLRA(Request $request)
    {
        $kode_satker = $request->kode_satker;
        $sub_sub_pertanyaan_lra = $request->sub_sub_pertanyaan_lra;
        $sub_pertanyaan_lra = $request->sub_pertanyaan_lra;
        $data = [
            'lra'=>$this->LRAModel->getLRA($kode_satker,$sub_sub_pertanyaan_lra,$sub_pertanyaan_lra),
            'kode_satker'=>$kode_satker
        ];
        return view('v_lra',$data);
    }

    public function editLRA(Request $request)
    {
        $kode_satker = $request->kode_satker;
        $id_sub_sub_pertanyaan_lra = $request->sub_sub_pertanyaan_lra;
        $id_sub_pertanyaan_lra = $request->sub_pertanyaan_lra;
        $id_jawaban_lra = $request->id_jawaban_lra;

        $data = [
            'data_lra' => $this->LRAModel->editLRA($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra,$id_jawaban_lra)
        ];
        return view('v_editlra',$data);
    }

    public function updateLRA(Request $request)
    {
        $kode_satker = $request->kode_satker;
        $id_sub_sub_pertanyaan_lra = $request->sub_sub_pertanyaan_lra;
        $id_sub_pertanyaan_lra = $request->sub_pertanyaan_lra;
        $id_jawaban_lra = $request->id_jawaban_lra;

        Request()->validate([
            'lembar_muka'=>'required',
            'lk_aplikasi'=>'required',
            'calk'=>'required'
        ],[
            'lembar_muka.required'=>'Wajib Diisi!!!',
            'lk_aplikasi.required'=>'Wajib Diisi!!!',
            'calk.required'=>'Wajib Diisi!!!'
        ]);

        $data = [
            'lembar_muka'=>$request->lembar_muka,
            'lk_aplikasi'=>$request->lk_aplikasi,
            'calk'=>$request->calk
        ];

        $this->LRAModel->updateLRA($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra,$id_jawaban_lra,$data);

        $sum_lembar_muka = $this->LRAModel->getSumLembarMuka($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra);
        $sum_lk_aplikasi = $this->LRAModel->getSumLKAplikasi($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra);
        $sum_calk = $this->LRAModel->getSumCalk($kode_satker,$id_sub_sub_pertanyaan_lra,$id_sub_pertanyaan_lra);

        $data_total = [
            'lembar_muka_total'=>$sum_lembar_muka,
            'lk_aplikasi_total'=>$sum_lk_aplikasi,
            'calk_total'=>$sum_calk
        ];

        $this->LRAModel->updateLRATotal($id_sub_pertanyaan_lra,$kode_satker,$data_total);

        return redirect()
            ->route('lra',[
                'kode_satker'=>$kode_satker,
                'sub_pertanyaan_lra'=>$id_sub_pertanyaan_lra,
                'sub_sub_pertanyaan_lra'=>$id_sub_sub_pertanyaan_lra,
                'id_jawaban_lra'=>$id_jawaban_lra])
            ->with('success','Data Berhasil Diperbarui!!!');
    }
}
