<header id="header">
<div class="container-fluid">
      <div class="row">
      <div id="logo" class="col-lg-3 col-md-3 col-sm-4 pt-1 d-none d-sm-block">
        
        <?php if($allsettings->site_logo != ''): ?>
    	<a href="<?php echo e(URL::to('/')); ?>">
        <img src="<?php echo e(url('/')); ?>/public/storage/settings/<?php echo e($allsettings->site_logo); ?>" alt="<?php echo e($allsettings->site_title); ?>">
    	</a>
        <?php endif; ?>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-4 pt-1 d-block d-sm-none">
        <a href="<?php echo e(URL::to('/')); ?>">
          <img src="<?php echo e(url('/')); ?>/public/storage/settings/logo.png">
        </a>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4">
             <form action="<?php echo e(route('shop')); ?>" class="search_form" id="search_form" method="post" enctype="multipart/form-data">
             <?php echo e(csrf_field()); ?>

              <div class="input-group flex-fill">
                 <input type="text" class="form-control mt-2" id="search_text" name="search_text" placeholder="<?php echo e(Helper::translation(2039,$translate)); ?>">
                   <div class="input-group-append">
                    <button class="btn btn-secondary button-color mt-2" type="submit">
                       <i class="fa fa-search"></i>
                 </button>
            </div>
         </div>
         </form>
      </div> 
     <div class="col-lg-5 col-md-5 col-sm-4 mt-2 pt-1 pb-1">
      <nav class="pull-right" id="nav-menu-container">
        <ul class="nav-menu">
            
          <li><a href="<?php echo e(URL::to('/')); ?>">Inicio</a></li>
          <li> <a href="<?php echo e(URL::to('/shop')); ?>">Categorías</a></li>
          
          <?php $__currentLoopData = $mainmenu['pages']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pages): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		  <li> <a href="<?php echo e(URL::to('/page/')); ?>/<?php echo e($pages->page_slug); ?>">Nosotros</a></li>
		  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          
          
          <li class="nav-item"><a href="<?php echo e(url('/cart')); ?>" class="nav-link"><i class="fa fa-shopping-cart"></i> <?php echo e(Helper::translation(1983,$translate)); ?> <span class="cart-badge"><?php echo e($cart_count); ?></span></a></li>
          
          
          
          <?php if(Auth::guest()): ?>
          <li><a href="<?php echo e(url('/login')); ?>" class="btn login-btn"><?php echo e(Helper::translation(2041,$translate)); ?></a></li>
          <?php else: ?> 
          <li class="menu-has-children"><a class="text-secondary" href="javascript:void(0)"><?php echo e(Helper::translation(2042,$translate)); ?></a>
            <ul>
              <?php if(Auth::user()->user_type == 'customer'): ?>
              <li><a class="text-secondary" href="<?php echo e(url('/my-profile')); ?>"><?php echo e(Helper::translation(2043,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/my-purchase')); ?>"><?php echo e(Helper::translation(2044,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/my-wallet')); ?>"><?php echo e(Helper::translation(2045,$translate)); ?></a></li>
              <?php endif; ?>
              <?php if(Auth::user()->user_type == 'vendor'): ?>
              <li><a class="text-secondary" href="<?php echo e(url('/my-profile')); ?>"><?php echo e(Helper::translation(2043,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/my-product')); ?>"><?php echo e(Helper::translation(2046,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/attribute-type')); ?>"><?php echo e(Helper::translation(1914,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/attribute-value')); ?>"><?php echo e(Helper::translation(1921,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/my-coupon')); ?>"><?php echo e(Helper::translation(2047,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/my-orders')); ?>"><?php echo e(Helper::translation(2026,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/my-purchase')); ?>"><?php echo e(Helper::translation(2044,$translate)); ?></a></li>
              <li><a class="text-secondary" href="<?php echo e(url('/my-wallet')); ?>"><?php echo e(Helper::translation(2045,$translate)); ?></a></li>
              <?php endif; ?>
              <li><a class="text-secondary" href="<?php echo e(url('/logout')); ?>"><?php echo e(Helper::translation(2048,$translate)); ?></a></li>
            </ul>
          </li>
          <?php endif; ?>
        </ul>
      </nav><!-- #nav-menu-container -->
      </div>
      </div>
    </div>
  </nav>
  <nav id="sidebar">
  <div id="dismiss">
      <i class="fa fa-arrow-left"></i>
  </div>
  <div class="sidebar-header">
      <h3><?php echo e(Helper::translation(1932,$translate)); ?></h3>
  </div>
  <ul class="list-unstyled components">
      <?php $__currentLoopData = $categories['display']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <li>
          <a <?php if(count($menu->subcategory) != 0): ?> href="#menu-<?php echo e($menu->cat_id); ?>" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" <?php else: ?> href="<?php echo e(URL::to('/shop/category')); ?>/<?php echo e($menu->category_slug); ?>"  <?php endif; ?>>
              <?php if($menu->category_image != ''): ?>
              <img src="<?php echo e(url('/')); ?>/public/storage/category/<?php echo e($menu->category_image); ?>" alt="<?php echo e($menu->category_name); ?>" class="menu-icon">
              <?php else: ?>
              <i class="fa fa-paper-plane"></i>
              <?php endif; ?>
              <span onclick="window.location.href='<?php echo e(URL::to('/shop/category')); ?>/<?php echo e($menu->category_slug); ?>'"><?php echo e($menu->category_name); ?></span>
          </a>
          <?php if(count($menu->subcategory) != 0): ?>
          <ul class="collapse list-unstyled" id="menu-<?php echo e($menu->cat_id); ?>">
          <?php $__currentLoopData = $menu->subcategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>  
              <li>
                  <a href="<?php echo e(URL::to('/shop/subcategory')); ?>/<?php echo e($sub_category->subcategory_slug); ?>"><?php echo e($sub_category->subcategory_name); ?></a>
              </li>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>    
          </ul>
          <?php endif; ?>
      </li>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </ul>
    
    
                    
                  
                  
                  
                 
</header><?php /**PATH /home/ubuntu/zigkart/resources/views/header.blade.php ENDPATH**/ ?>