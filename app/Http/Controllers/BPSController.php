<?php

namespace App\Http\Controllers;

use App\Models\BPSModel;
use Illuminate\Http\Request;

class BPSController extends Controller
{
    public function __construct()
    {
        $this -> BPSModel = new BPSModel();
    }

    public function getAllDataInstansi($kode_satker)
    {
        $data = [
            'instansi'=>$this->BPSModel->allDataInstansi($kode_satker)
        ];
        return view('v_bps',$data);
    }

    public function updateLk($id_jawaban, Request $request)
    {
        $kondisi_lk = $request->input('kondisi_lk');

        if($kondisi_lk == 1){
            $bobot = 100;
        }else{
            $bobot = 0;
        }

        Request()->validate([
            'kondisi_lk'=>'required',
            'seharusnya'=>'required',
        ]);

        $data = [
            'kondisi_lk'=> $kondisi_lk,
            'seharusnya'=>Request()->seharusnya,
            'bobot'=>$bobot
        ];

        $this->BPSModel->editData($id_jawaban,$data);

        return redirect()->route('instansi')->with('pesan','Data Berhasil Di Update!!!');
    }
}
