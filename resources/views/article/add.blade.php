@extends('layouts.app')

@section('tags')
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />

@endsection

@section('content')
<!--Begin::Section-->
<div class="row">
    <div class="col-xl-12">
        <div class="kt-portlet kt-portlet--height-fluid kt-portlet--mobile ">
            <div class="kt-portlet__head">
                <div class="kt-portlet__head-label">
                    <h3 class="kt-portlet__head-title">
                        Tambah Artikel
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
                          <form class="kt-form" method="POST" action="{{ route('article.add') }}">
                            {{ csrf_field() }}
							<div class="kt-portlet__body">
                              <div class="kt-section kt-section--first">
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Judul Artikel</label>
                                        <div class="col-lg-6">
                                            <input type="text" name="title" value="{{ old('title') }}" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Gambar</label>
                                        <div class="col-lg-6">
                                           <img id="holder" src="@isset($data) {{ asset($data->image) }}  @endisset" style="margin-top:15px;max-height:254px;max-width: 152px;">
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
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label"> Topik/Tags </label>
                                        <div class="col-lg-6">
                                           <select  class="tags form-control" name="tags[]" multiple>
                                             @foreach($data_category as $category)
                                               <option value="{{$category->id}}">{{$category->name}}</option>
                                             @endforeach
                                          </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Deskripsi singkat</label>
                                        <div class="col-lg-6">
                                            <textarea rows="8"  name="short_description"   class="form-control">{{ old('short_description') }}</textarea>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Konten</label>
                                        <div class="col-lg-6">
                                            <textarea rows="50" name="content" class="my-editor"><?=old("content")?></textarea>
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
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<script src='https://cdn.tiny.cloud/1/4bhyo8toykj07fm88gb92tneldixtci82t105p09xwel8lvv/tinymce/5/tinymce.min.js' referrerpolicy="origin">
</script>

<script>


 $(document).ready( function () {
  $('.tags').select2();

      $('#lfm').filemanager('image');

  });


  var editor_config = {
    path_absolute : "/",
    selector: "textarea.my-editor",
    plugins: [
      "advlist autolink lists link image charmap print preview hr anchor pagebreak",
      "searchreplace wordcount visualblocks visualchars code fullscreen",
      "insertdatetime media nonbreaking save table contextmenu directionality",
      "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
    relative_urls: false,
    file_browser_callback : function(field_name, url, type, win) {
      var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
      var y = window.innerHeight|| document.documentElement.clientHeight|| document.getElementsByTagName('body')[0].clientHeight;
 
      var cmsURL = editor_config.path_absolute + 'laravel-filemanager?field_name=' + field_name;
      if (type == 'image') {
        cmsURL = cmsURL + "&type=Images";
      } else {
        cmsURL = cmsURL + "&type=Files";
      }
 
      tinyMCE.activeEditor.windowManager.open({
        file : cmsURL,
        title : 'Filemanager',
        width : x * 0.8,
        height : y * 0.8,
        resizable : "yes",
        close_previous : "no"
      });
    }
  };
 
  tinymce.init(editor_config);
  // @if(old('konten')!=null)
  //  tinymce.get("konten").getBody().innerHTML = <?php old('konten'); ?>
  // @endif



</script>

@endsection