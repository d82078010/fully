<aside  class="col-sm-4 col-sm-push-8">
@include('frontend/elements/search')
    <div class="widget">
       <a href="#"> <img src="{!! url('assets/images/rss_button.png') !!}" /></a>
    </div>
    <div style="clear: both"></div>
    <div class="widget categories">
        <h3>最新资讯</h3>

        <div class="row">
            <div class="col-sm-12">
             @foreach($news as $item)

                        @if($item->path && $item->file_name)
                            <a href="{!! URL::route('dashboard.news.show', array('id'=>$item->id)) !!}"></a>
                        @else
                            <a href="{!! URL::route('dashboard.news.show', array('id'=>$item->id)) !!}"></a>
                        @endif


                        <a href="{!! URL::route('dashboard.news.show', array('id'=>$item->id)) !!}">{!! $item->title !!}</a>
                        <br>
                        <small class="muted">{!! $item->created_at !!}</small>
                        <hr>


                @endforeach
            </div>
        </div>
    </div>
    <!--/.categories-->
	<!--
     <div class="widget categories">
            <h3>Twitter</h3>

            <div class="row">
                <div class="col-sm-6">

                </div>
            </div>
        </div>
		
		-->
        <!--/.categories-->
</aside>