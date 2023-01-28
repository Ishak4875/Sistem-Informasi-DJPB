@extends("layout.v_template")
@section("content")

@if (session('pesan'))
  <script>
    $(function () { //ready
      toastr.success("{{session('pesan')}}");
    });
  </script>
@endif

<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Satker</h1>
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
            <div class="card-header">
              <h3 class="card-title">Daftar Satker</h3>
              <div class="card-tools">
                <form action="/instansi/search" method="GET">
                  <div class="input-group input-group-sm" style="width: 300px;">
                    <input type="text" name="kode_satker" class="form-control float-right" placeholder="Cari Kode Satker">
                    <div class="input-group-append">
                      <button class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
              <table class="table table-hover text-nowrap">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Kode Satker</th>
                    <th>Nama Satker</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                    <?php $no=1; ?>
                    @foreach ($instansi as $data)
                    <tr>
                        <td>{{$no++}}</td>
                        <td>{{$data->kode_satker}}</td>
                        <td>{{$data->nama_instansi}}</td>
                        <td>
                          <a href="/instansi/detail/{{$data->kode_satker}}" class="btn btn-sm btn-primary">Detail</a>
                          <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modal-danger{{$data->kode_satker}}">
                            Delete
                          </button>
                        </td>
                      </tr>
                    @endforeach
                </tbody>
              </table>
            </div>
            <div class="card-footer">
              <ul class="pagination float-right">
                {{$instansi->links()}}
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
    </div>
  </section>

  @foreach ($instansi as $data)
  <div class="modal fade" id="modal-danger{{$data->kode_satker}}">
    <div class="modal-dialog">
      <div class="modal-content bg-danger">
        <div class="modal-header">
          <h4 class="modal-title">{{$data->nama_instansi}}</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p>Apakah Anda Yakin Ingin Menghapus Data Ini?</p>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-outline-light" data-dismiss="modal">No</button>
          <a href="/instansi/delete/{{$data->kode_satker}}" class="btn btn-outline-light">Yes</a>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  @endforeach
@endsection