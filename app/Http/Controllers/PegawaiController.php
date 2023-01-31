<?php

namespace App\Http\Controllers;

use App\Models\PegawaiModel;
use App\Models\InstansiModel;
use App\Models\LRAModel;
use App\Models\SheetModel;
use Illuminate\Http\Request;

class PegawaiController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this -> PegawaiModel = new PegawaiModel();
        $this -> InstansiModel = new InstansiModel();
        $this -> SheetModel = new SheetModel();
        $this -> LRAModel = new LRAModel();
    }

    public function getDetailPegawai($id_satker)
    {
        if(!$this->PegawaiModel->detailPegawai($id_satker)){
            abort(404);
        }

        $pegawai = [
            $this->PegawaiModel->detailPegawai($id_satker)
        ];

        $instansi = [
            $this->InstansiModel->detailData($id_satker)
        ];

        $sheet = [
            $this->SheetModel->getSheet($id_satker)
        ];

        $dataLRA = [
            'subsub'=>$this->LRAModel->getSubSubLRA()
        ];

        return view('v_pegawai')
            ->with('sheet',$sheet)
            ->with('pegawai',$pegawai)
            ->with('instansi',$instansi)
            ->with('datalra',$dataLRA);
    }

    public function getDetailPegawai2($id_satker)
    {
        if(!$this->PegawaiModel->detailPegawai($id_satker)){
            abort(404);
        }
        $data = [
            'pegawai' => $this->PegawaiModel->detailPegawai($id_satker)
        ];
        return view('v_editpegawai',$data);
    }

    public function update($id_satker)
    {
        Request()->validate([
            'nama_pegawai_dibuat'=>'required',
            'nip_pegawai_dibuat'=>'required',
            'nama_pegawai_diverifikasi'=>'required',
            'nip_pegawai_diverifikasi'=>'required',
            'nama_pegawai_disetujui'=>'required',
            'nip_pegawai_disetujui'=>'required'
        ],[
            'nama_pegawai_dibuat.required'=>'Wajib Diisi!!!',
            'nip_pegawai_dibuat.required'=>'Wajib Diisi!!!',
            'nama_pegawai_diverifikasi.required'=>'Wajib Diisi!!!',
            'nip_pegawai_diverifikasi.required'=>'Wajib Diisi!!!',
            'nama_pegawai_disetujui.required'=>'Wajib Diisi!!!',
            'nip_pegawai_disetujui.required'=>'Wajib Diisi!!!'
        ]);

        $data = [
            'nama_pegawai_dibuat'=>Request()->nama_pegawai_dibuat,
            'nip_pegawai_dibuat'=>Request()->nip_pegawai_dibuat,
            'nama_pegawai_diverifikasi'=>Request()->nama_pegawai_diverifikasi,
            'nip_pegawai_diverifikasi'=>Request()->nip_pegawai_diverifikasi,
            'nama_pegawai_disetujui'=>Request()->nama_pegawai_disetujui,
            'nip_pegawai_disetujui'=>Request()->nip_pegawai_disetujui
        ];

        $this->PegawaiModel->editPegawai($id_satker,$data);

        return redirect()->route('instansi')->with('pesan','Data Berhasil Di Update!!!');
    }
}
