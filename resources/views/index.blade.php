@if($allsettings->maintenance_mode == 0)
<!DOCTYPE html>
<html lang="en">
<head>
<title>{{ Helper::translation(1913,$translate) }} - {{ $allsettings->site_title }}</title>
@include('style')
</head>
<body>
@include('header')
    <main role="main" class="main-content">
      @if(count($slideshow['view']) != 0)
      <div id="myCarousel" class="carousel pt-5 slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner pb-3">
          @php $k = 1; @endphp
          @foreach($slideshow['view'] as $slide)
          <div class="carousel-item @if($k == 1) active @endif">
            <img class="first-slide img-fluid" style="max-width: 100%;" src="{{ url('/') }}/public/storage/slideshow/{{ $slide->slide_image }}" alt="{{ $slide->slide_image }}">
            <div class="container">
              <div class="carousel-caption pb-1 @if($slide->slide_text_position != '') text-{{ $slide->slide_text_position }} @else text-left @endif">
                <h2>{{ $slide->slide_title }}</h2>
                <p>{{ $slide->slide_desc }}</p>
              </div>
            </div>
          </div>
          @php $k++; @endphp
          @endforeach
        </div>
      </div>
      @endif

      {{-- Categories carousel --}}
      @if(count($categorybox['view']) != 0)
      <div class="container">  
        <h4 class="black mb-2 pb-2">{{ Helper::translation(2056,$translate) }}</h4>
        <div class="owl-carousel owl-theme pt-4 white-box mt-2"align="center">
         @foreach($categorybox['view'] as $category)
          <div class="p-1 col-5 col-lg-3" align="center">
            <a href="{{ URL::to('/shop/category') }}/{{ $category->category_slug }}" title="{{ $category->category_name }}">
            @if($category->category_image != '')
            <img src="{{ url('/') }}/public/storage/category/{{ $category->category_image }}" alt="{{ $category->category_name }}">
            @else
            <img src="{{ url('/') }}/public/img/no-image.jpg" alt="{{ $category->category_name }}">
            @endif
            </a>
            <p><a href="{{ URL::to('/shop/category') }}/{{ $category->category_slug }}" class="link-color fs14">{{ $category->category_name }}</a></p>
          </div>
          @endforeach
        </div><!-- /.row -->
      </div>
    @endif
       

      @if(count($physical['product']) != 0) 
       <div class="container pt-3 mt-3 pb-3 mb-3">
         <div class="row">
         <h4 class="black mb-2 pb-2">{{ Helper::translation(2059,$translate) }}</h4>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                            @php $z = 1; @endphp
                              @foreach($physical['product'] as $product) 
                                    <div class="swiper-slide">
                                    <div class="product-grid2">
                                    <div class="product-image2">
                                    <div class="product-hider">
                               <a href="{{ url('/') }}/public/storage/product/{{ $product->product_image }}" data-fancybox="quick-view-{{ $product->product_token.$z }}" data-type="image" class="quickview">
                               <i class="fa fa-eye"></i>
                               <p>{{ Helper::translation(2060,$translate) }}<br/>{{ Helper::translation(2061,$translate) }}</p>
                               </a>
                               <div class="product-images">
                                    @php $imagecount = count($product->productimages); @endphp
                                    @if($imagecount != 0)
                                    @foreach($product->productimages as $images)
                                    <a href="{{ url('/') }}/public/storage/product/{{ $images->product_image }}" data-fancybox="quick-view-{{ $product->product_token.$z }}" data-type="image"></a>
                                    @endforeach
                                    @endif
                                    </div>
                                    <div class="product-former">
                                    <h3>{{ $product->product_name }}</h3>
                                    <div class="mt-3">{{ Helper::translation(2062,$translate) }} : @if($product->product_stock != 0)<span class="theme-color">{{ Helper::translation(2063,$translate) }} ({{ $product->product_stock }})</span>@else<span class="red-color">{{ Helper::translation(2064,$translate) }} ({{ $product->product_stock }})</span>@endif</div>
            @php if($product->product_condition == 'new'){ $badg = "badge badge-warning"; } else { $badg = "badge badge-secondary"; } @endphp
            @if($product->product_condition != "")<div class="mt-2">{{ Helper::translation(1950,$translate) }} : <span class="{{ $badg }}">{{ $product->product_condition }}</span></div>@endif
                                    <div class="mt-3">@if($product->product_price != 0)<span @if($product->product_offer_price != 0) class="fs16 offer-price red-color" @else class="fs32" @endif>{{ $allsettings->site_currency_symbol }}{{ $product->product_price }}</span>@endif @if($product->product_offer_price != 0)<span class="fs32">{{ $allsettings->site_currency_symbol }}{{ $product->product_offer_price }}</span>@endif</div>
                                    <p class="mt-3">
                                    {{ $product->product_short_desc }} 
                                    </p>
                                    <p><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}" class="btn button-color">{{ Helper::translation(2065,$translate) }}</a></p>
                                    </div>
                                    </div>
                                    <a href="{{ URL::to('/product') }}/{{ $product->product_slug }}">
                                            @if($product->product_image != "")
                                            <img class="pic-1" src="{{ url('/') }}/public/storage/product/{{ $product->product_image }}">
                                            @else
                                            <img class="pic-1" src="{{ url('/') }}/public/img/no-image.jpg">
                                            @endif
                                            @php $imagecount = count($product->productimages); @endphp
                                            @if($imagecount != 0)
                                            @php $no = 1; @endphp
                                            @foreach($product->productimages as $images)
                                            @if($no == 1)
                                            <img class="pic-2" src="{{ url('/') }}/public/storage/product/{{ $images->product_image }}">
                                            @endif
                                            @php $no++; @endphp
                                            @endforeach
                                            @else
                                            <img class="pic-2" src="{{ url('/') }}/public/storage/product/{{ $product->product_image }}">
                                            @endif
                                            </a>
                                            <ul class="social">
                                                @if(Auth::guest())
                                                <li><a href="{{ url('/login') }}" data-tip="{{ Helper::translation(2066,$translate) }}"><i class="fa fa-shopping-bag"></i></a></li>
                                                @else
                                                @if(Auth::user()->id != $product->user_id)
                                                <li><a href="{{ url('/wishlist') }}/{{ Auth::user()->id }}/{{ $product->product_token }}" data-tip="{{ Helper::translation(2066,$translate) }}"><i class="fa fa-shopping-bag"></i></a></li>
                                                @endif
                                                @endif
                                                <li><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}" data-tip="{{ Helper::translation(2067,$translate) }}"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                            <a class="add-to-cart" href="{{ URL::to('/product') }}/{{ $product->product_slug }}">{{ Helper::translation(2067,$translate) }}</a>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}">{{ $product->product_name }}</a></h3>
                                            <span class="price">{{ $allsettings->site_currency_symbol }}{{ $product->product_price }}</span>
                                        </div>
                                    </div>
                                    </div>
                                   @php $z++; @endphp      
                            @endforeach  
                            </div>
                            <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>
                </div>
               </div> 
        </div>
        @endif
        @if(count($external['product']) != 0) 
        <div class="container mt-4 mb-4 pt-4 pb-4">
         <div class="row">
         <h4 class="black mb-2 pb-2">{{ Helper::translation(2068,$translate) }}</h4>
         <div class="swiper-container">
                            <div class="swiper-wrapper">
                            @php $y = 1; @endphp
                              @foreach($external['product'] as $product) 
                                    <div class="swiper-slide">
                                    <div class="product-grid2">
                                    <div class="product-image2">
                                    <div class="product-hider">
                               <a href="{{ url('/') }}/public/storage/product/{{ $product->product_image }}" data-fancybox="quick-view-{{ $product->product_token.$y }}" data-type="image" class="quickview">
                               <i class="fa fa-eye"></i>
                               <p>{{ Helper::translation(2060,$translate) }}<br/>{{ Helper::translation(2061,$translate) }}</p>
                               </a>
                               <div class="product-images">
                                    @php $imagecount = count($product->productimages); @endphp
                                    @if($imagecount != 0)
                                    @foreach($product->productimages as $images)
                                    <a href="{{ url('/') }}/public/storage/product/{{ $images->product_image }}" data-fancybox="quick-view-{{ $product->product_token.$y }}" data-type="image"></a>
                                    @endforeach
                                    @endif
                                    </div>
                                    <div class="product-former">
                                    <h3>{{ $product->product_name }}</h3>
                                    <div class="mt-3">{{ Helper::translation(2062,$translate) }} : @if($product->product_stock != 0)<span class="theme-color">{{ Helper::translation(2063,$translate) }} ({{ $product->product_stock }})</span>@else<span class="red-color">{{ Helper::translation(2064,$translate) }} ({{ $product->product_stock }})</span>@endif</div>
            @php if($product->product_condition == 'new'){ $badg = "badge badge-warning"; } else { $badg = "badge badge-secondary"; } @endphp
            @if($product->product_condition != "")<div class="mt-2">{{ Helper::translation(1950,$translate) }} : <span class="{{ $badg }}">{{ $product->product_condition }}</span></div>@endif
                                    <div class="mt-3">@if($product->product_price != 0)<span @if($product->product_offer_price != 0) class="fs16 offer-price red-color" @else class="fs32" @endif>{{ $allsettings->site_currency_symbol }}{{ $product->product_price }}</span>@endif @if($product->product_offer_price != 0)<span class="fs32">{{ $allsettings->site_currency_symbol }}{{ $product->product_offer_price }}</span>@endif</div>
                                    <p class="mt-3">
                                    {{ $product->product_short_desc }} 
                                    </p>
                                    <p><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}" class="btn button-color">{{ Helper::translation(2065,$translate) }}</a></p>
                                    </div>
                                    </div>
                                    <a href="{{ URL::to('/product') }}/{{ $product->product_slug }}">
                                            @if($product->product_image != "")
                                            <img class="pic-1" src="{{ url('/') }}/public/storage/product/{{ $product->product_image }}">
                                            @else
                                            <img class="pic-1" src="{{ url('/') }}/public/img/no-image.jpg">
                                            @endif
                                            @php $imagecount = count($product->productimages); @endphp
                                            @if($imagecount != 0)
                                            @php $no = 1; @endphp
                                            @foreach($product->productimages as $images)
                                            @if($no == 1)
                                            <img class="pic-2" src="{{ url('/') }}/public/storage/product/{{ $images->product_image }}">
                                            @endif
                                            @php $no++; @endphp
                                            @endforeach
                                            @else
                                            <img class="pic-2" src="{{ url('/') }}/public/storage/product/{{ $product->product_image }}">
                                            @endif
                                            </a>
                                            <ul class="social">
                                                @if(Auth::guest())
                                                <li><a href="{{ url('/login') }}" data-tip="{{ Helper::translation(2066,$translate) }}"><i class="fa fa-shopping-bag"></i></a></li>
                                                @else
                                                @if(Auth::user()->id != $product->user_id)
                                                <li><a href="{{ url('/wishlist') }}/{{ Auth::user()->id }}/{{ $product->product_token }}" data-tip="{{ Helper::translation(2066,$translate) }}"><i class="fa fa-shopping-bag"></i></a></li>
                                                @endif
                                                @endif
                                                <li><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}" data-tip="{{ Helper::translation(2067,$translate) }}"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                            <a class="add-to-cart" href="{{ URL::to('/product') }}/{{ $product->product_slug }}">{{ Helper::translation(2067,$translate) }}</a>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}">{{ $product->product_name }}</a></h3>
                                            <span class="price">{{ $allsettings->site_currency_symbol }}{{ $product->product_price }}</span>
                                        </div>
                                    </div>
                                    </div>
                                   @php $y++; @endphp      
                            @endforeach  
                            </div>
                            <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>
                </div>
               </div> 
        </div>
        @endif
        @if(count($digital['product']) != 0) 
        <div class="container mt-4 mb-4 pt-4 pb-4">
         <div class="row">
         <h4 class="black mb-2 pb-2">{{ Helper::translation(2069,$translate) }}</h4>
         <div class="swiper-container">
                            <div class="swiper-wrapper">
                            @php $x = 1; @endphp
                              @foreach($digital['product'] as $product) 
                                    <div class="swiper-slide">
                                    <div class="product-grid2">
                                    <div class="product-image2">
                                    <div class="product-hider">
                               <a href="{{ url('/') }}/public/storage/product/{{ $product->product_image }}" data-fancybox="quick-view-{{ $product->product_token.$x }}" data-type="image" class="quickview">
                               <i class="fa fa-eye"></i>
                               <p>{{ Helper::translation(2060,$translate) }}<br/>{{ Helper::translation(2061,$translate) }}</p>
                               </a>
                               <div class="product-images">
                                    @php $imagecount = count($product->productimages); @endphp
                                    @if($imagecount != 0)
                                    @foreach($product->productimages as $images)
                                    <a href="{{ url('/') }}/public/storage/product/{{ $images->product_image }}" data-fancybox="quick-view-{{ $product->product_token.$x }}" data-type="image"></a>
                                    @endforeach
                                    @endif
                                    </div>
                                    <div class="product-former">
                                    <h3>{{ $product->product_name }}</h3>
                                    <div class="mt-3">{{ Helper::translation(2062,$translate) }} : @if($product->product_stock != 0)<span class="theme-color">{{ Helper::translation(2063,$translate) }} ({{ $product->product_stock }})</span>@else<span class="red-color">{{ Helper::translation(2064,$translate) }} ({{ $product->product_stock }})</span>@endif</div>
            @php if($product->product_condition == 'new'){ $badg = "badge badge-warning"; } else { $badg = "badge badge-secondary"; } @endphp
            @if($product->product_condition != "")<div class="mt-2">{{ Helper::translation(1950,$translate) }} : <span class="{{ $badg }}">{{ $product->product_condition }}</span></div>@endif
                                    <div class="mt-3">@if($product->product_price != 0)<span @if($product->product_offer_price != 0) class="fs16 offer-price red-color" @else class="fs32" @endif>{{ $allsettings->site_currency_symbol }}{{ $product->product_price }}</span>@endif @if($product->product_offer_price != 0)<span class="fs32">{{ $allsettings->site_currency_symbol }}{{ $product->product_offer_price }}</span>@endif</div>
                                    <p class="mt-3">
                                    {{ $product->product_short_desc }} 
                                    </p>
                                    <p><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}" class="btn button-color">{{ Helper::translation(2065,$translate) }}</a></p>
                                    </div>
                                    </div>
                                    <a href="{{ URL::to('/product') }}/{{ $product->product_slug }}">
                                            @if($product->product_image != "")
                                            <img class="pic-1" src="{{ url('/') }}/public/storage/product/{{ $product->product_image }}">
                                            @else
                                            <img class="pic-1" src="{{ url('/') }}/public/img/no-image.jpg">
                                            @endif
                                            @php $imagecount = count($product->productimages); @endphp
                                            @if($imagecount != 0)
                                            @php $no = 1; @endphp
                                            @foreach($product->productimages as $images)
                                            @if($no == 1)
                                            <img class="pic-2" src="{{ url('/') }}/public/storage/product/{{ $images->product_image }}">
                                            @endif
                                            @php $no++; @endphp
                                            @endforeach
                                            @else
                                            <img class="pic-2" src="{{ url('/') }}/public/storage/product/{{ $product->product_image }}">
                                            @endif
                                            </a>
                                            <ul class="social">
                                                @if(Auth::guest())
                                                <li><a href="{{ url('/login') }}" data-tip="{{ Helper::translation(2066,$translate) }}"><i class="fa fa-shopping-bag"></i></a></li>
                                                @else
                                                @if(Auth::user()->id != $product->user_id)
                                                <li><a href="{{ url('/wishlist') }}/{{ Auth::user()->id }}/{{ $product->product_token }}" data-tip="{{ Helper::translation(2066,$translate) }}"><i class="fa fa-shopping-bag"></i></a></li>
                                                @endif
                                                @endif
                                                <li><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}" data-tip="{{ Helper::translation(2067,$translate) }}"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                            <a class="add-to-cart" href="{{ URL::to('/product') }}/{{ $product->product_slug }}">{{ Helper::translation(2067,$translate) }}</a>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="{{ URL::to('/product') }}/{{ $product->product_slug }}">{{ $product->product_name }}</a></h3>
                                            <span class="price">{{ $allsettings->site_currency_symbol }}{{ $product->product_price }}</span>
                                        </div>
                                    </div>
                                    </div>
                                   @php $x++; @endphp      
                            @endforeach  
                            </div>
                            <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>
                </div>
            </div> 
        </div>
        @endif
    </main>
    @include('footer')
    @include('javascript')
    </body>
</html>
@else
@include('503')
@endif