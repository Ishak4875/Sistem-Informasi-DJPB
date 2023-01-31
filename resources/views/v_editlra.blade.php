@extends('layout.v_template')
@section('content')
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-1">
      <div class="col-sm-12">
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<section class="content">
    <div class="container-fluid">
        <div class="col-sm-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Edit LRA</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/instansi/detail/sublra/uraianlra/update/{{$data_lra->kode_satker}}/{{$data_lra->id_sub_sub_pertanyaan_lra}}/{{$data_lra->id_sub_lra}}/{{$data_lra->id_jawaban_lra}}" method="POST">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label>Uraian</label>
                    <input type="text" class="form-control" name="uraian" value="{{$data_lra->pertanyaan}}" placeholder="Uraian" readonly>
                    <div class="text-danger">
                      @error('uraian')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Lembar Muka</label>
                    <input type="number" class="form-control" name="lembar_muka" value="{{$data_lra->lembar_muka}}" placeholder="Lembar Muka">
                    <div class="text-danger">
                      @error('lembar_muka')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>LK Aplikasi</label>
                    <input type="number" class="form-control" name="lk_aplikasi" value="{{$data_lra->lk_aplikasi}}" placeholder="LK Aplikasi">
                    <div class="text-danger">
                      @error('lk_aplikasi')
                          {{$message}}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label>CALK</label>
                    <input type="number" class="form-control" name="calk" value="{{$data_lra->calk}}" placeholder="CALK">
                    <div class="text-danger">
                      @error('calk')
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