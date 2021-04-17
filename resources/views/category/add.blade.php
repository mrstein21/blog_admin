@extends('layouts.app')


@section('content')
<!--Begin::Section-->
<div class="row">
    <div class="col-xl-12">
        <div class="kt-portlet kt-portlet--height-fluid kt-portlet--mobile ">
            <div class="kt-portlet__head">
                <div class="kt-portlet__head-label">
                    <h3 class="kt-portlet__head-title">
                        Tambah Topik
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

                        @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                            </ul>
                        </div>
                        @endif
						<div class="tab-pane active" id="kt_widget11_tab1_content">
                          <form class="kt-form" method="POST" action="{{ route('category.add') }}">
                            {{ csrf_field() }}
							<div class="kt-portlet__body">
                              <div class="kt-section kt-section--first">
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Nama Kategori</label>
                                        <div class="col-lg-6">
                                            <input type="text" name="name" value="{{ old('name') }}" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Gambar</label>
                                        <div class="col-lg-6">
                                           <img id="holder" src="@isset($data) {{ asset($data->logo) }}  @endisset" style="margin-top:15px;max-height:254px;max-width: 152px;">
                                           <br>
                                           <br>
                                           <span class="input-group-btn">
                                           <a id="lfm" data-input="logo" data-preview="holder" class="btn btn-primary text-white">
                                             <i class="fa fa-cloud-upload"></i> Choose
                                           </a>
                                           <input type="hidden"   name="cover" id="logo"/>
                                          </span>
                                          <br>
                                        </div>
                                    </div>   
                               </div>     
                            </div>
                            <div class="kt-portlet__foot">
                              <div class="kt-form__actions">
                              <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-6">
                                  <button  type="submit" class="btn btn-success">Submit</button>
                                </div>
                              </div>
                              </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--End::Section-->



<!--End::Dashboard 4-->
@endsection
@section("lfm")
<script src="{{ asset('vendor/laravel-filemanager/js/lfm.js') }}"></script>
<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>

<script>
 $(document).ready( function () {
      $('#lfm').filemanager('image');
  });

</script>

@endsection