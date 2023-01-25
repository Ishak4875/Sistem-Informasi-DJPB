@extends('layout.v_template')
@section('content')
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Data Pegawai</h3>
            </div>
            <form action="/instansi/pegawai/update/{{$pegawai->id_instansi}}" method="POST">
                <div class="card-body table-responsive p-0">
                    @csrf
                    <table class="table table-hover text-nowrap">
                        <thead>
                          <tr>
                            <th>Dibuat Oleh</th>
                            <th></th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Nama</td>
                            <td>:</td>
                            <td>
                              <input type="text" class="form-control" name="nama_pegawai_dibuat" value="{{$pegawai->nama_pegawai_dibuat}}" placeholder="Masukkan Nama Pegawai">
                              <div class="text-danger">
                                @error('nama_pegawai_dibuat')
                                    {{$message}}
                                @enderror
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>NIP</td>
                            <td>:</td>
                            <td>
                              <input type="text" class="form-control" name="nip_pegawai_dibuat" value="{{$pegawai->nip_pegawai_dibuat}}" placeholder="Masukkan NIP Pegawai">
                              <div class="text-danger">
                                @error('nip_pegawai_dibuat')
                                    {{$message}}
                                @enderror
                              </div>
                            </td>
                          </tr>
                        </tbody>
                        <thead>
                          <tr>
                            <th>Diverifikasi Oleh</th>
                            <th></th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Nama</td>
                            <td>:</td>
                            <td>
                              <input type="text" class="form-control" name="nama_pegawai_diverifikasi" value="{{$pegawai->nama_pegawai_diverifikasi}}" placeholder="Masukkan Nama Pegawai">
                              <div class="text-danger">
                                @error('nama_pegawai_diverifikasi')
                                    {{$message}}
                                @enderror
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>NIP</td>
                            <td>:</td>
                            <td>
                              <input type="text" class="form-control" name="nip_pegawai_diverifikasi" value="{{$pegawai->nip_pegawai_diverifikasi}}" placeholder="Masukkan Nama Pegawai">
                              <div class="text-danger">
                                @error('nip_pegawai_diverifikasi')
                                    {{$message}}
                                @enderror
                              </div>
                            </td>
                          </tr>
                        </tbody>
                        <thead>
                          <tr>
                            <th>Disetujui Oleh</th>
                            <th></th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Nama</td>
                            <td>:</td>
                            <td>
                              <input type="text" class="form-control" name="nama_pegawai_disetujui" value="{{$pegawai->nama_pegawai_disetujui}}" placeholder="Masukkan Nama Pegawai">
                              <div class="text-danger">
                                @error('nama_pegawai_disetujui')
                                    {{$message}}
                                @enderror
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>NIP</td>
                            <td>:</td>
                            <td>
                              <input type="text" class="form-control" name="nip_pegawai_disetujui" value="{{$pegawai->nip_pegawai_disetujui}}" placeholder="Masukkan NIP Pegawai">
                              <div class="text-danger">
                                @error('nip_pegawai_disetujui')
                                    {{$message}}
                                @enderror
                              </div>
                            </td>
                          </tr>
                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                <button class="btn btn-primary">Update</button>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
@endsection