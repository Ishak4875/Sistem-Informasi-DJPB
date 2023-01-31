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
    <div class="row">
        <div class="col">
          <div class="card">
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
              <table class="table table-hover text-nowrap">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Sub Uraian</th>
                    <th>Lembar Muka</th>
                    <th>LK Aplikasi</th>
                    <th>CALK</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1; ?>
                  @foreach ($sublra as $data)
                    <tr>
                        <td>{{$no++}}</td>
                        <td>{{$data->sub_pertanyaan_lra}}</td>
                        <td>{{$data->lembar_muka_total}}</td>
                        <td>{{$data->lk_aplikasi_total}}</td>
                        <td>{{$data->calk_total}}</td>
                        <td>
                            <a href="/instansi/detail/sublra/uraianlra/{{$kode_satker}}/{{$data->id_sub_sub_pertanyaan_lra}}/{{$data->id_sub_lra}}" class="btn btn-sm btn-primary">Detail</a>
                        </td>   
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
    </div>
  </div>
</section>
@endsection