<?php

namespace App\Http\Controllers;

use App\Models\InstansiModel;
use Illuminate\HTTP\Request;
use mysqli;

class InstansiController extends Controller
{
    public function __construct()
    {
        $this -> InstansiModel = new InstansiModel();
    }

    public function index()
    {
        $data = [
            'instansi' => $this -> InstansiModel -> allData(),
        ];
        return view('v_instansi',$data);
    }

    public function getKodeSatker(Request $request)
    {
        $kode_satker = request('kode_satker');

        if($kode_satker == null){
            $data = [
                'instansi' => $this -> InstansiModel -> allData(),
            ];
        }else{
            $data = [
                'instansi' => $this->InstansiModel->searchKodeSatker($kode_satker)
            ];
        }
        return view('v_instansi',$data);
    }

    public function edit($kode_satker)
    {
        if(!$this -> InstansiModel -> detailData($kode_satker)){
            abort(404);
        }

        $data = [
            'instansi' => $this -> InstansiModel -> detailData($kode_satker)
        ];
        return view('v_editinstansi',$data);
    }

    public function update($kode_satker)
    {
        Request()->validate([
            'nama_instansi'=>'required',
            'kode_ba'=>'required',
            'kode_eselon_1'=>'required',
            'kode_satker'=>'required','unique:tbl_instansi',
            'jenis_kewenangan'=>'required',
            'nama_uappaw'=>'required',
            'kode_uappaw'=>'required',
            'periode'=>'required'
        ],[
            'nama_instansi.required'=>'Wajib Diisi!!!',
            'kode_ba.required'=>'Wajib Diisi!!!',
            'kode_eselon_1.required'=>'Wajib Diisi!!!',
            'kode_satker.required'=>'Wajib Diisi!!!',
            'jenis_kewenangan.required'=>'Wajib Diisi!!!',
            'nama_uappaw.required'=>'Wajib Diisi!!!',
            'kode_uappaw.required'=>'Wajib Diisi!!!',
            'periode.required'=>'Wajib Diisi!!!',
            'kode_satker.unique'=>'Kode Satker Ini Sudah Terdaftar!!!'
        ]);
        $data = [
            'nama_instansi'=>Request()->nama_instansi,
            'kode_ba'=>Request()->kode_ba,
            'kode_eselon_1'=>Request()->kode_eselon_1,
            'kode_satker'=>Request()->kode_satker,
            'jenis_kewenangan'=>Request()->jenis_kewenangan,
            'nama_uappaw'=>Request()->nama_uappaw,
            'kode_uappaw'=>Request()->kode_uappaw,
            'periode'=>Request()->periode
        ];

        $this->InstansiModel->editData($kode_satker,$data);
        
        return redirect()->route('instansi')->with('pesan','Data Berhasil Di Update!!!');
    }

    public function delete($kode_satker)
    {
        $this->InstansiModel->deleteData($kode_satker);
        return redirect()->route('instansi')->with('pesan','Data Berhasil Di Hapus!!!');
    }
}