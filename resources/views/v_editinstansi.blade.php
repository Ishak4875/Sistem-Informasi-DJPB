@extends("layout.v_template")
@section("content")
<section class="content">
    <div class="container-fluid">
        <div class="col-sm-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Edit Instansi</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/instansi/update/{{$instansi->id_instansi}}" method="POST">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label>Kode Instansi</label>
                    <input type="text" class="form-control" name="kode_instansi" value="{{$instansi->kode_instansi}}" placeholder="Masukkan Kode Instasi" readonly>
                  </div>
                  <div class="form-group">
                    <label>Nama Instansi</label>
                    <input type="text" class="form-control" name="nama_instansi" value="{{$instansi->nama_instansi}}" placeholder="Masukkan Nama Instansi">
                    <div class="text-danger">
                      @error('nama_instansi')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Kode BA</label>
                    <input type="text" class="form-control" name="kode_ba" value="{{$instansi->kode_ba}}" placeholder="Masukkan Kode BA">
                    <div class="text-danger">
                      @error('kode_ba')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Kode Eselon 1</label>
                    <input type="text" class="form-control" name="kode_eselon_1" value="{{$instansi->kode_eselon_1}}" placeholder="Masukkan Kode Eselon 1">
                    <div class="text-danger">
                      @error('kode_eselon_1')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Kode Satker</label>
                    <input type="text" class="form-control" name="kode_satker" value="{{$instansi->kode_satker}}" placeholder="Masukkan Kode Satker">
                    <div class="text-danger">
                      @error('kode_satker')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Jenis Kewenangan</label>
                    <input type="text" class="form-control" name="jenis_kewenangan" value="{{$instansi->jenis_kewenangan}}" placeholder="Masukkan Jenis Kewenangan">
                    <div class="text-danger">
                      @error('jenis_kewenangan')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Nama UAPPAW</label>
                    <input type="text" class="form-control" name="nama_uappaw" value="{{$instansi->nama_uappaw}}" placeholder="Masukkan Nama UAPPAW">
                    <div class="text-danger">
                      @error('nama_uappaw')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Kode UAPPAW</label>
                    <input type="text" class="form-control" name="kode_uappaw" value="{{$instansi->kode_uappaw}}" placeholder="Masukkan Kode UAPPAW">
                    <div class="text-danger">
                      @error('kode_uappaw')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Periode</label>
                    <input type="text" class="form-control" name="periode" value="{{$instansi->periode}}" placeholder="Masukkan Periode">
                    <div class="text-danger">
                      @error('periode')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
        </div>
    </div>
</section>
@endsection