<?php

namespace App\Http\Controllers;

use App\Models\AnalisaModel;
use Illuminate\Http\Request;
use Mockery\Undefined;

class AnalisaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->AnalisaModel = new AnalisaModel();
    }

    public function getSubSubAnalisaPertanyaan($kode_satker)
    {
        $data = [
            'subsub'=>$this->AnalisaModel->getSubSubAnalisaPertanyaan($kode_satker)
        ];
        return view('v_subsubanalisislk',$data);
    }

    public function getSubAnalisaPertanyaan($kode_satker,$id_sub_sub)
    {
        $data = [
            'sub'=>$this->AnalisaModel->getSubAnalisaPertanyaan($kode_satker,$id_sub_sub)
        ];
        return view('v_subanalisislk',$data);
    }

    public function getAnalisaPertanyaan($kode_satker,$id_sub)
    {
        $data = [
            'uraian'=>$this->AnalisaModel->getAnalisaPertanyaan($kode_satker,$id_sub)
        ];
        return view('v_analisislk',$data);
    }

    public function updateKondisiLK($kode_satker,$id_sub,$id_jawaban,Request $request)
    {
        $kondisi_lk = $request->kondisi_lk;
        $seharusnya = $request->seharusnya;
        $bobot = $request->bobot;
        $id_sub_sub = $request->id_sub_sub_pertanyaan;

        Request()->validate([
            'kondisi_lk'=>'required',
            'seharusnya'=>'required',
        ]);

        $data = [
            'kondisi_lk'=> $kondisi_lk,
            'seharusnya'=>$seharusnya,
            'bobot'=>$bobot
        ];

        $this->AnalisaModel->updateKondisiLK($kode_satker,$id_sub,$id_jawaban,$data);
        $avgBobotArray = $this->AnalisaModel->getAvgBobot($kode_satker,$id_sub_sub);

        $persen = $this->AnalisaModel->getPersen($kode_satker,$id_sub_sub);

        $nilai = (float)reset($avgBobotArray[0]) * $persen / 100;
        $dataNilai = [
            'nilai'=>$nilai
        ];
        $this->AnalisaModel->updateNilai($kode_satker,$id_sub_sub,$dataNilai);

        $totalNilai = $this->AnalisaModel->getTotalSkor($kode_satker);
        $dataTotalSkor = [
            'total_skor'=>$totalNilai
        ];
        $sheet = 'Analisis LK';
        $this->AnalisaModel->updateTotalSkor($kode_satker,$sheet,$dataTotalSkor);

        return response()->json([
            'success' => true,
            'pesan' => 'Data Berhasil Diudapte!',
            'id_sub'=>$id_sub,
            'kode_satker'=>$kode_satker,
            'id_jawaban'=>$id_jawaban,
            'kondisi_lk'=>$kondisi_lk,
            'seharusnya'=>$seharusnya,
            'bobot'=>$bobot,
            'totalNilai'=>$totalNilai
        ]);
    }
}
