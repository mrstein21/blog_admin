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
                        Tambah Video
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
                          <form class="kt-form" method="POST" action="{{ route('video.add') }}">
                            {{ csrf_field() }}
						          	<div class="kt-portlet__body">
                              <div class="kt-section kt-section--first">
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Judul Video</label>
                                        <div class="col-lg-6">
                                            <input type="text" name="title" value="{{ old('title') }}" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label">Link Youtube</label>
                                        <div class="col-lg-6">
                                         
                                           <input type="text" oninput="onType()" id="link_youtube" name="link_youtube" value="{{ old('link_youtube') }}"  class="form-control">
                                           <input type="hidden"   name="youtube_key" id="youtube_key"/>
                                           <br>
                                           <br>
                                           <img id="holder" src="@isset($data) {{ asset($data->image) }}  @endisset" style="margin-top:15px;max-height:254px;max-width: 152px;">
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
                                        <label class="col-lg-3 col-form-label">Deskripsi</label>
                                        <div class="col-lg-6">
                                        <textarea rows="4" name="description" class="form-control"><?=old("description")?></textarea>
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
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT"
  crossorigin="anonymous"></script> -->


<script>


 $(document).ready( function () {
  $('.tags').select2();

  });

  function onType(){
    var x = document.getElementById("link_youtube").value;
    var url=getThumb(x,"small");
    var key=getKey(x,"small");
    document.getElementById("holder").src = url;
    document.getElementById("youtube_key").value=key
  }

  function getThumb(url,size){
    if (url === null) {
            return '';
        }
        size    = (size === null) ? 'big' : size;
        results = url.match('[\\?&]v=([^&#]*)');
        video   = (results === null) ? url : results[1];

        if (size === 'small') {
            return 'http://img.youtube.com/vi/' + video + '/2.jpg';
        }
        return 'http://img.youtube.com/vi/' + video + '/0.jpg';
  }

  function getKey(url,size){
    if (url === null) {
            return '';
        }
        size    = (size === null) ? 'big' : size;
        results = url.match('[\\?&]v=([^&#]*)');
        video   = (results === null) ? null : results[1];
        return video;
  }

</script>

@endsection