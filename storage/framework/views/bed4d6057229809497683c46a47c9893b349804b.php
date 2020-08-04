<?php if($allsettings->maintenance_mode == 0): ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title><?php echo e(Helper::translation(1913,$translate)); ?> - <?php echo e($allsettings->site_title); ?></title>
<?php echo $__env->make('style', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>
<body>
<?php echo $__env->make('header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <main role="main" class="main-content">
      <?php if(count($slideshow['view']) != 0): ?>
      <div id="myCarousel" class="carousel pt-5 slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner pb-3">
          <?php $k = 1; ?>
          <?php $__currentLoopData = $slideshow['view']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slide): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <div class="carousel-item <?php if($k == 1): ?> active <?php endif; ?>">
            <img class="first-slide img-fluid" style="max-width: 100%;" src="<?php echo e(url('/')); ?>/public/storage/slideshow/<?php echo e($slide->slide_image); ?>" alt="<?php echo e($slide->slide_image); ?>">
            <div class="container">
              <div class="carousel-caption pb-1 <?php if($slide->slide_text_position != ''): ?> text-<?php echo e($slide->slide_text_position); ?> <?php else: ?> text-left <?php endif; ?>">
                <h2><?php echo e($slide->slide_title); ?></h2>
                <p><?php echo e($slide->slide_desc); ?></p>
              </div>
            </div>
          </div>
          <?php $k++; ?>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
      </div>
      <?php endif; ?>

      
      <?php if(count($categorybox['view']) != 0): ?>
      <div class="container">  
        <h4 class="black mb-2 pb-2"><?php echo e(Helper::translation(2056,$translate)); ?></h4>
        <div class="owl-carousel owl-theme pt-4 white-box mt-2"align="center">
         <?php $__currentLoopData = $categorybox['view']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <div class="p-1 col-5 col-lg-3" align="center">
            <a href="<?php echo e(URL::to('/shop/category')); ?>/<?php echo e($category->category_slug); ?>" title="<?php echo e($category->category_name); ?>">
            <?php if($category->category_image != ''): ?>
            <img src="<?php echo e(url('/')); ?>/public/storage/category/<?php echo e($category->category_image); ?>" alt="<?php echo e($category->category_name); ?>">
            <?php else: ?>
            <img src="<?php echo e(url('/')); ?>/public/img/no-image.jpg" alt="<?php echo e($category->category_name); ?>">
            <?php endif; ?>
            </a>
            <p><a href="<?php echo e(URL::to('/shop/category')); ?>/<?php echo e($category->category_slug); ?>" class="link-color fs14"><?php echo e($category->category_name); ?></a></p>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div><!-- /.row -->
      </div>
    <?php endif; ?>
       

      <?php if(count($physical['product']) != 0): ?> 
       <div class="container pt-3 mt-3 pb-3 mb-3">
         <div class="row">
         <h4 class="black mb-2 pb-2"><?php echo e(Helper::translation(2059,$translate)); ?></h4>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                            <?php $z = 1; ?>
                              <?php $__currentLoopData = $physical['product']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
                                    <div class="swiper-slide">
                                    <div class="product-grid2">
                                    <div class="product-image2">
                                    <div class="product-hider">
                               <a href="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>" data-fancybox="quick-view-<?php echo e($product->product_token.$z); ?>" data-type="image" class="quickview">
                               <i class="fa fa-eye"></i>
                               <p><?php echo e(Helper::translation(2060,$translate)); ?><br/><?php echo e(Helper::translation(2061,$translate)); ?></p>
                               </a>
                               <div class="product-images">
                                    <?php $imagecount = count($product->productimages); ?>
                                    <?php if($imagecount != 0): ?>
                                    <?php $__currentLoopData = $product->productimages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <a href="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($images->product_image); ?>" data-fancybox="quick-view-<?php echo e($product->product_token.$z); ?>" data-type="image"></a>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                    </div>
                                    <div class="product-former">
                                    <h3><?php echo e($product->product_name); ?></h3>
                                    <div class="mt-3"><?php echo e(Helper::translation(2062,$translate)); ?> : <?php if($product->product_stock != 0): ?><span class="theme-color"><?php echo e(Helper::translation(2063,$translate)); ?> (<?php echo e($product->product_stock); ?>)</span><?php else: ?><span class="red-color"><?php echo e(Helper::translation(2064,$translate)); ?> (<?php echo e($product->product_stock); ?>)</span><?php endif; ?></div>
            <?php if($product->product_condition == 'new'){ $badg = "badge badge-warning"; } else { $badg = "badge badge-secondary"; } ?>
            <?php if($product->product_condition != ""): ?><div class="mt-2"><?php echo e(Helper::translation(1950,$translate)); ?> : <span class="<?php echo e($badg); ?>"><?php echo e($product->product_condition); ?></span></div><?php endif; ?>
                                    <div class="mt-3"><?php if($product->product_price != 0): ?><span <?php if($product->product_offer_price != 0): ?> class="fs16 offer-price red-color" <?php else: ?> class="fs32" <?php endif; ?>><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_price); ?></span><?php endif; ?> <?php if($product->product_offer_price != 0): ?><span class="fs32"><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_offer_price); ?></span><?php endif; ?></div>
                                    <p class="mt-3">
                                    <?php echo e($product->product_short_desc); ?> 
                                    </p>
                                    <p><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>" class="btn button-color"><?php echo e(Helper::translation(2065,$translate)); ?></a></p>
                                    </div>
                                    </div>
                                    <a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>">
                                            <?php if($product->product_image != ""): ?>
                                            <img class="pic-1" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>">
                                            <?php else: ?>
                                            <img class="pic-1" src="<?php echo e(url('/')); ?>/public/img/no-image.jpg">
                                            <?php endif; ?>
                                            <?php $imagecount = count($product->productimages); ?>
                                            <?php if($imagecount != 0): ?>
                                            <?php $no = 1; ?>
                                            <?php $__currentLoopData = $product->productimages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($no == 1): ?>
                                            <img class="pic-2" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($images->product_image); ?>">
                                            <?php endif; ?>
                                            <?php $no++; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php else: ?>
                                            <img class="pic-2" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>">
                                            <?php endif; ?>
                                            </a>
                                            <ul class="social">
                                                <?php if(Auth::guest()): ?>
                                                <li><a href="<?php echo e(url('/login')); ?>" data-tip="<?php echo e(Helper::translation(2066,$translate)); ?>"><i class="fa fa-shopping-bag"></i></a></li>
                                                <?php else: ?>
                                                <?php if(Auth::user()->id != $product->user_id): ?>
                                                <li><a href="<?php echo e(url('/wishlist')); ?>/<?php echo e(Auth::user()->id); ?>/<?php echo e($product->product_token); ?>" data-tip="<?php echo e(Helper::translation(2066,$translate)); ?>"><i class="fa fa-shopping-bag"></i></a></li>
                                                <?php endif; ?>
                                                <?php endif; ?>
                                                <li><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>" data-tip="<?php echo e(Helper::translation(2067,$translate)); ?>"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                            <a class="add-to-cart" href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>"><?php echo e(Helper::translation(2067,$translate)); ?></a>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>"><?php echo e($product->product_name); ?></a></h3>
                                            <span class="price"><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_price); ?></span>
                                        </div>
                                    </div>
                                    </div>
                                   <?php $z++; ?>      
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
                            </div>
                            <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>
                </div>
               </div> 
        </div>
        <?php endif; ?>
        <?php if(count($external['product']) != 0): ?> 
        <div class="container mt-4 mb-4 pt-4 pb-4">
         <div class="row">
         <h4 class="black mb-2 pb-2"><?php echo e(Helper::translation(2068,$translate)); ?></h4>
         <div class="swiper-container">
                            <div class="swiper-wrapper">
                            <?php $y = 1; ?>
                              <?php $__currentLoopData = $external['product']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
                                    <div class="swiper-slide">
                                    <div class="product-grid2">
                                    <div class="product-image2">
                                    <div class="product-hider">
                               <a href="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>" data-fancybox="quick-view-<?php echo e($product->product_token.$y); ?>" data-type="image" class="quickview">
                               <i class="fa fa-eye"></i>
                               <p><?php echo e(Helper::translation(2060,$translate)); ?><br/><?php echo e(Helper::translation(2061,$translate)); ?></p>
                               </a>
                               <div class="product-images">
                                    <?php $imagecount = count($product->productimages); ?>
                                    <?php if($imagecount != 0): ?>
                                    <?php $__currentLoopData = $product->productimages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <a href="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($images->product_image); ?>" data-fancybox="quick-view-<?php echo e($product->product_token.$y); ?>" data-type="image"></a>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                    </div>
                                    <div class="product-former">
                                    <h3><?php echo e($product->product_name); ?></h3>
                                    <div class="mt-3"><?php echo e(Helper::translation(2062,$translate)); ?> : <?php if($product->product_stock != 0): ?><span class="theme-color"><?php echo e(Helper::translation(2063,$translate)); ?> (<?php echo e($product->product_stock); ?>)</span><?php else: ?><span class="red-color"><?php echo e(Helper::translation(2064,$translate)); ?> (<?php echo e($product->product_stock); ?>)</span><?php endif; ?></div>
            <?php if($product->product_condition == 'new'){ $badg = "badge badge-warning"; } else { $badg = "badge badge-secondary"; } ?>
            <?php if($product->product_condition != ""): ?><div class="mt-2"><?php echo e(Helper::translation(1950,$translate)); ?> : <span class="<?php echo e($badg); ?>"><?php echo e($product->product_condition); ?></span></div><?php endif; ?>
                                    <div class="mt-3"><?php if($product->product_price != 0): ?><span <?php if($product->product_offer_price != 0): ?> class="fs16 offer-price red-color" <?php else: ?> class="fs32" <?php endif; ?>><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_price); ?></span><?php endif; ?> <?php if($product->product_offer_price != 0): ?><span class="fs32"><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_offer_price); ?></span><?php endif; ?></div>
                                    <p class="mt-3">
                                    <?php echo e($product->product_short_desc); ?> 
                                    </p>
                                    <p><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>" class="btn button-color"><?php echo e(Helper::translation(2065,$translate)); ?></a></p>
                                    </div>
                                    </div>
                                    <a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>">
                                            <?php if($product->product_image != ""): ?>
                                            <img class="pic-1" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>">
                                            <?php else: ?>
                                            <img class="pic-1" src="<?php echo e(url('/')); ?>/public/img/no-image.jpg">
                                            <?php endif; ?>
                                            <?php $imagecount = count($product->productimages); ?>
                                            <?php if($imagecount != 0): ?>
                                            <?php $no = 1; ?>
                                            <?php $__currentLoopData = $product->productimages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($no == 1): ?>
                                            <img class="pic-2" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($images->product_image); ?>">
                                            <?php endif; ?>
                                            <?php $no++; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php else: ?>
                                            <img class="pic-2" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>">
                                            <?php endif; ?>
                                            </a>
                                            <ul class="social">
                                                <?php if(Auth::guest()): ?>
                                                <li><a href="<?php echo e(url('/login')); ?>" data-tip="<?php echo e(Helper::translation(2066,$translate)); ?>"><i class="fa fa-shopping-bag"></i></a></li>
                                                <?php else: ?>
                                                <?php if(Auth::user()->id != $product->user_id): ?>
                                                <li><a href="<?php echo e(url('/wishlist')); ?>/<?php echo e(Auth::user()->id); ?>/<?php echo e($product->product_token); ?>" data-tip="<?php echo e(Helper::translation(2066,$translate)); ?>"><i class="fa fa-shopping-bag"></i></a></li>
                                                <?php endif; ?>
                                                <?php endif; ?>
                                                <li><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>" data-tip="<?php echo e(Helper::translation(2067,$translate)); ?>"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                            <a class="add-to-cart" href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>"><?php echo e(Helper::translation(2067,$translate)); ?></a>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>"><?php echo e($product->product_name); ?></a></h3>
                                            <span class="price"><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_price); ?></span>
                                        </div>
                                    </div>
                                    </div>
                                   <?php $y++; ?>      
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
                            </div>
                            <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>
                </div>
               </div> 
        </div>
        <?php endif; ?>
        <?php if(count($digital['product']) != 0): ?> 
        <div class="container mt-4 mb-4 pt-4 pb-4">
         <div class="row">
         <h4 class="black mb-2 pb-2"><?php echo e(Helper::translation(2069,$translate)); ?></h4>
         <div class="swiper-container">
                            <div class="swiper-wrapper">
                            <?php $x = 1; ?>
                              <?php $__currentLoopData = $digital['product']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
                                    <div class="swiper-slide">
                                    <div class="product-grid2">
                                    <div class="product-image2">
                                    <div class="product-hider">
                               <a href="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>" data-fancybox="quick-view-<?php echo e($product->product_token.$x); ?>" data-type="image" class="quickview">
                               <i class="fa fa-eye"></i>
                               <p><?php echo e(Helper::translation(2060,$translate)); ?><br/><?php echo e(Helper::translation(2061,$translate)); ?></p>
                               </a>
                               <div class="product-images">
                                    <?php $imagecount = count($product->productimages); ?>
                                    <?php if($imagecount != 0): ?>
                                    <?php $__currentLoopData = $product->productimages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <a href="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($images->product_image); ?>" data-fancybox="quick-view-<?php echo e($product->product_token.$x); ?>" data-type="image"></a>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                    </div>
                                    <div class="product-former">
                                    <h3><?php echo e($product->product_name); ?></h3>
                                    <div class="mt-3"><?php echo e(Helper::translation(2062,$translate)); ?> : <?php if($product->product_stock != 0): ?><span class="theme-color"><?php echo e(Helper::translation(2063,$translate)); ?> (<?php echo e($product->product_stock); ?>)</span><?php else: ?><span class="red-color"><?php echo e(Helper::translation(2064,$translate)); ?> (<?php echo e($product->product_stock); ?>)</span><?php endif; ?></div>
            <?php if($product->product_condition == 'new'){ $badg = "badge badge-warning"; } else { $badg = "badge badge-secondary"; } ?>
            <?php if($product->product_condition != ""): ?><div class="mt-2"><?php echo e(Helper::translation(1950,$translate)); ?> : <span class="<?php echo e($badg); ?>"><?php echo e($product->product_condition); ?></span></div><?php endif; ?>
                                    <div class="mt-3"><?php if($product->product_price != 0): ?><span <?php if($product->product_offer_price != 0): ?> class="fs16 offer-price red-color" <?php else: ?> class="fs32" <?php endif; ?>><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_price); ?></span><?php endif; ?> <?php if($product->product_offer_price != 0): ?><span class="fs32"><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_offer_price); ?></span><?php endif; ?></div>
                                    <p class="mt-3">
                                    <?php echo e($product->product_short_desc); ?> 
                                    </p>
                                    <p><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>" class="btn button-color"><?php echo e(Helper::translation(2065,$translate)); ?></a></p>
                                    </div>
                                    </div>
                                    <a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>">
                                            <?php if($product->product_image != ""): ?>
                                            <img class="pic-1" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>">
                                            <?php else: ?>
                                            <img class="pic-1" src="<?php echo e(url('/')); ?>/public/img/no-image.jpg">
                                            <?php endif; ?>
                                            <?php $imagecount = count($product->productimages); ?>
                                            <?php if($imagecount != 0): ?>
                                            <?php $no = 1; ?>
                                            <?php $__currentLoopData = $product->productimages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($no == 1): ?>
                                            <img class="pic-2" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($images->product_image); ?>">
                                            <?php endif; ?>
                                            <?php $no++; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php else: ?>
                                            <img class="pic-2" src="<?php echo e(url('/')); ?>/public/storage/product/<?php echo e($product->product_image); ?>">
                                            <?php endif; ?>
                                            </a>
                                            <ul class="social">
                                                <?php if(Auth::guest()): ?>
                                                <li><a href="<?php echo e(url('/login')); ?>" data-tip="<?php echo e(Helper::translation(2066,$translate)); ?>"><i class="fa fa-shopping-bag"></i></a></li>
                                                <?php else: ?>
                                                <?php if(Auth::user()->id != $product->user_id): ?>
                                                <li><a href="<?php echo e(url('/wishlist')); ?>/<?php echo e(Auth::user()->id); ?>/<?php echo e($product->product_token); ?>" data-tip="<?php echo e(Helper::translation(2066,$translate)); ?>"><i class="fa fa-shopping-bag"></i></a></li>
                                                <?php endif; ?>
                                                <?php endif; ?>
                                                <li><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>" data-tip="<?php echo e(Helper::translation(2067,$translate)); ?>"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                            <a class="add-to-cart" href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>"><?php echo e(Helper::translation(2067,$translate)); ?></a>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="<?php echo e(URL::to('/product')); ?>/<?php echo e($product->product_slug); ?>"><?php echo e($product->product_name); ?></a></h3>
                                            <span class="price"><?php echo e($allsettings->site_currency_symbol); ?><?php echo e($product->product_price); ?></span>
                                        </div>
                                    </div>
                                    </div>
                                   <?php $x++; ?>      
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
                            </div>
                            <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>
                </div>
            </div> 
        </div>
        <?php endif; ?>
    </main>
    <?php echo $__env->make('footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('javascript', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </body>
</html>
<?php else: ?>
<?php echo $__env->make('503', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?><?php /**PATH /home/ubuntu/zigkart/resources/views/index.blade.php ENDPATH**/ ?>