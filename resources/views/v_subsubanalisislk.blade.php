@extends("layout.v_template")
@section("content")
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Dashboard</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Dashboard v1</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
  
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Sub Uraian</th>
                            <th>Nilai</th>
                            <th>Persen</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1; ?>
                        @foreach ($subsub as $data)
                            <tr>
                                <td>{{$no}}</td>
                                <td>{{$data->sub_sub_pertanyaan}}</td>
                                <td>{{$data->nilai}}</td>
                                <td>{{$data->persen}}%</td>
                                <td>
                                    <a href="/instansi/detail/analisisLK/subpertanyaan/{{$data->id_instansi}}/{{$data->id_sub_sub_pertanyaan}}" class="btn btn-sm btn-primary">Detail</a>
                                </td>
                            </tr>
                            <?php $no++; ?>
                        @endforeach
                    </tbody>
                </table>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
@endsection