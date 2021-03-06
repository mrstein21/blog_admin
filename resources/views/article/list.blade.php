@extends('layouts.app')

@section('datatable_css')
<link href="{{ asset('assets/vendors/custom/datatables/datatables.bundle.css') }}" rel="stylesheet" type="text/css" />
@endsection


@section('content')
<!--Begin::Section-->
<div class="row">
    <div class="col-xl-12">
        <div class="kt-portlet kt-portlet--height-fluid kt-portlet--mobile ">
            <div class="kt-portlet__head">
                <div class="kt-portlet__head-label">
                    <h3 class="kt-portlet__head-title">
                        Daftar Artikel
                    </h3>
                </div>
                <div class="kt-portlet__head-toolbar">
                   	
                </div>
            </div>
            <div class="kt-portlet__body">
                <div class="tab-content">
                       @if (session('success'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('success') }}
                                </div>
                        @endif
                    @can("menu-create")
                    <a href="{{ route('article.view_add') }}"><button class="btn btn-primary">Tambah</button></a>
                    @endcan
                    <br>
                    <br>
                    <div class="tab-pane active" style="overflow-x:auto;" id="kt_widget11_tab1_content">
                       <table class="table table-striped- table-bordered table-hover" id="kt_1">
                         <thead>
                            <tr>
                              <th>Title</th>
                              <th>Gambar</th>
                              <th>Deskripsi</th>
                              <th>Tanggal</th>
                              <th>Aksi</th>
                            </tr>
                         </thead>
                         <tbody>
                         
                         </tbody>
                       </table>
                       <br>
                       <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--End::Section-->



<!--End::Dashboard 4-->
@endsection
@section("datatable")
<script src="{{ asset('js/sweetalert.min.js')}}"></script>
<script src="{{ asset('js/axios.js')}}"></script>
<script src="{{ asset('assets/vendors/custom/datatables/datatables.bundle.js') }}" type="text/javascript"></script>
<script src="{{ asset('assets/app/custom/general/crud/datatables/basic/scrollable.js') }}" type="text/javascript"></script>
<script>
  var token = document.head.querySelector('meta[name="csrf-token"]');
     window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;

$('#kt_1').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{route('article.datatable')}}",
        columns: [
            {data: 'title', name: 'title'},
            {data: 'cover', name: 'cover'},
            {data: 'short_description', name: 'short_description'},
            {data: 'created_at', name: 'created_at'},
            {data: 'action', name: 'action', orderable: false, searchable: false}
        ]
    }); 
    function showAlert(id){
      swal({
        title: "Are you sure?",
        text: "Once deleted, you will not be able to recover this imaginary file!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
          axios.delete("/article/delete/"+id).then((response)=>{
             swal("Data Artikel sudah dihapus!", {
             icon: "success",
            });
            //getData();
            location.reload();
          }).catch((err)=>{
            console.log("Gagal : "+err);
            swal("Data Artikel gagal dihapus!", {
             icon: "warning",
            });
          })
        }
      });
    }
</script>
@endsection