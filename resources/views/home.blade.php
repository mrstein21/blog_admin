@extends('layouts.app')

@section('datatable_css')
<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" rel="stylesheet" type="text/css" />
@endsection


@section('content')
<!--Begin::Section-->
<div class="row">
    <div class="col-xl-12">
        <br>
        <br>
        
        <div class="kt-portlet__body kt-portlet__body--fit">
           <div class="kt-widget17">
              <div class="kt-widget17__stats">
                  <div class="kt-widget17__items">
                       <div class="kt-widget17__item">
                       
                            <span class="kt-widget17__subtitle">
								Total Article
							</span>
							<span class="kt-widget17__desc"  style="color:black; font-weight:bold;">
								 {{$total_article}}
							</span>
                       </div>
                       <div class="kt-widget17__item">
                            <span class="kt-widget17__subtitle">
								Total Video
							</span>
							<span class="kt-widget17__desc"  style="color:black; font-weight:bold;">
								 {{$total_video}}
							</span>
                       </div>
                       <div class="kt-widget17__item">
                            <span class="kt-widget17__subtitle">
								Total Topik
							</span>
							<span class="kt-widget17__desc"  style="color:black; font-weight:bold;">
								 {{$total_topic}}
							</span>
                       </div>
                  </div>
                  <div class="kt-widget17__items">
                   <div class="kt-widget17__item">
                       <div id="calendar"></div>
                   </div>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>

<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT"
  crossorigin="anonymous"></script> -->
<script>


 $(document).ready( function () {
    $('#calendar').fullCalendar({
    // put your options and callbacks here
    })
  });

  // @ndif



</script>

@endsection