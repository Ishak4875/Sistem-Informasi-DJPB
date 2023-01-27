<?php

namespace App\Http\Controllers;

use App\Models\AnalisaModel;
use Illuminate\Http\Request;
use Mockery\Undefined;

class AnalisaController extends Controller
{
    public function __construct()
    {
        $this->AnalisaModel = new AnalisaModel();
    }

    public function getSubSubAnalisaPertanyaan($id_instansi)
    {
        $data = [
            'subsub'=>$this->AnalisaModel->getSubSubAnalisaPertanyaan($id_instansi)
        ];
        return view('v_subsubanalisislk',$data);
    }

    public function getSubAnalisaPertanyaan($id_instansi,$id_sub_sub)
    {
        $data = [
            'sub'=>$this->AnalisaModel->getSubAnalisaPertanyaan($id_instansi,$id_sub_sub)
        ];
        return view('v_subanalisislk',$data);
    }

    public function getAnalisaPertanyaan($id_instansi,$id_sub)
    {
        $data = [
            'uraian'=>$this->AnalisaModel->getAnalisaPertanyaan($id_instansi,$id_sub)
        ];
        return view('v_analisislk',$data);
    }

    public function updateKondisiLK($id_instansi,$id_sub,$id_jawaban,Request $request)
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

        $this->AnalisaModel->updateKondisiLK($id_instansi,$id_sub,$id_jawaban,$data);
        $avgBobotArray = $this->AnalisaModel->getAvgBobot($id_instansi,$id_sub_sub);

        $persen = $this->AnalisaModel->getPersen($id_instansi,$id_sub_sub);

        $nilai = (float)reset($avgBobotArray[0]) * $persen / 100;
        $dataNilai = [
            'nilai'=>$nilai
        ];
        $this->AnalisaModel->updateNilai($id_instansi,$id_sub_sub,$dataNilai);

        $totalNilai = $this->AnalisaModel->getTotalSkor($id_instansi);
        $dataTotalSkor = [
            'total_skor'=>$totalNilai
        ];
        $sheet = 'Analisis LK';
        $this->AnalisaModel->updateTotalSkor($id_instansi,$sheet,$dataTotalSkor);

        return response()->json([
            'success' => true,
            'pesan' => 'Data Berhasil Diudapte!',
            'id_sub'=>$id_sub,
            'id_instansi'=>$id_instansi,
            'id_jawaban'=>$id_jawaban,
            'kondisi_lk'=>$kondisi_lk,
            'seharusnya'=>$seharusnya,
            'bobot'=>$bobot,
            'totalNilai'=>$totalNilai
        ]);
    }
}
