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
@if (session('success'))
  <script>
    $(function () { //ready
      toastr.success("{{session('success')}}");
    });
  </script>
@endif
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
                    <th>Uraian</th>
                    <th>Lembar Muka</th>
                    <th>LK Aplikasi</th>
                    <th>CALK</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1; ?>
                  @foreach ($lra as $data)
                    <tr>
                        <td>{{$no++}}</td>
                        <td>{{$data->pertanyaan}}</td>
                        <td>{{$data->lembar_muka}}</td>
                        <td>{{$data->lk_aplikasi}}</td>
                        <td>{{$data->calk}}</td>
                        <td>
                            <a href="/instansi/detail/sublra/uraianlra/edit/{{$kode_satker}}/{{$data->id_sub_sub_pertanyaan_lra}}/{{$data->id_sub_lra}}/{{$data->id_jawaban_lra}}" class="btn btn-sm btn-warning">Edit</a>
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