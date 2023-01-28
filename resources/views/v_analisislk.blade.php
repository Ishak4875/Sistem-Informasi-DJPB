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
            <div class="card-header">
              <h3 class="card-title">Uraian</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
              <table class="table table-hover text-nowrap">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Uraian</th>
                    <th>Kondisi LK</th>
                    <th>Seharusnya</th>
                    <th>Bobot</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no=1; ?>
                  @foreach ($uraian as $data)
                    <tr class="trdata" data-idsub="{{$data->id_sub}}" data-kodesatker="{{$data->kode_satker}}" data-idjawaban="{{$data->id_jawaban}}" data-bobotArray="{{$no}}" data-idSubSubPertanyaan="{{$data->id_sub_sub_pertanyaan}}">
                        <td>{{$no++}}</td>
                        <td>{{$data->pertanyaan}}</td>
                        <td>
                          <select name="kondisi_lk" id="kondisi_lk" class="form-control select2" style="width: 100%;">
                            <option <?php if(($data->kondisi_lk) == '1') echo 'selected' ?>>1</option>
                            <option <?php if(($data->kondisi_lk) == '2') echo 'selected' ?>>2</option>
                          </select>
                        </td>
                        <td>
                          <select name="seharusnya" id="seharusnya" class="form-control select2" style="width: 100%;">
                            <option <?php if(($data->seharusnya) == 'Ada') echo 'selected' ?>>Ada</option>
                            <option <?php if(($data->seharusnya) == 'Ya') echo 'selected' ?>>Ya</option>
                            <option <?php if(($data->seharusnya) == 'Ya/Tidak') echo 'selected' ?>>Ya/Tidak</option>
                            <option <?php if(($data->seharusnya) == 'Sama') echo 'selected' ?>>Sama</option>
                            <option <?php if(($data->seharusnya) == 'Tidak') echo 'selected' ?>>Tidak</option>
                          </select>
                        </td>
                        <td class="bobotClass"><p id="bobot" name="bobot">{{$data->bobot}}</p></td>
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
  <script type='text/javascript'>
    $(document).ready(function(e){
      $(".select2").change(function(e){
        e.preventDefault();
        var kode_satker = $(this).closest('.trdata').attr('data-kodesatker');
        var id_sub = $(this).closest('.trdata').attr('data-idsub');
        var id_jawaban = $(this).closest('.trdata').attr('data-idjawaban');
        var id_sub_sub_pertanayaan = $(this).closest('.trdata').attr('data-idSubSubPertanyaan');
        var bobot_array = $(this).closest('.trdata').attr('data-bobotArray');
        console.log(kode_satker);
        console.log(id_sub);
        var url = '{{URL("/instansi/update/analisisLK")}}'+'/'+kode_satker+'/'+id_sub+'/'+id_jawaban;
        console.log(url);
        console.log("Masuk script");
        var kondisi_lk = $('#kondisi_lk').val();
        var seharusnya = $('#seharusnya').val();
        var bobot = 0;
        console.log(kondisi_lk);
        console.log(seharusnya);
        var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
        console.log(CSRF_TOKEN);
        if(kondisi_lk == 1){
          bobot = 100;
        }
        $.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
        });
        $.ajax({
          url:url,
          type:'POST',
          // dataType: 'json',
          // contentType: 'application/json; charset=utf-8',
          catch:false,
          data: {
            kondisi_lk : kondisi_lk,
            seharusnya : seharusnya,
            bobot : bobot,
            id_sub_sub_pertanyaan : id_sub_sub_pertanayaan
          },
          success: function (data) {
            if(data.pesan !== undefined){
              toastr.success(data.pesan);
            }
            document.getElementsByClassName("bobotClass")[bobot_array-1].innerHTML = data.bobot;
            // console.log("Bobot Class " + data.bobot);
            // console.log("Bobot Array" + (bobot_array-1));
          },
          error: function(error) {
            const message = error.statusText;
            if(message !== undefined){
              toastr.error(message);
            }
          }
        });
        console.log("Selesai Script");
      });
    });
  </script>
@endsection
