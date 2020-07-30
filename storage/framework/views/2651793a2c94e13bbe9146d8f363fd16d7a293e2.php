<?php if($allsettings->maintenance_mode == 0): ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title><?php echo e(Helper::translation(2040,$translate)); ?> - <?php echo e($allsettings->site_title); ?></title>
<?php echo $__env->make('style', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>
<body>
    <?php echo $__env->make('header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <section class="pt-3">
      <div class="pt-5">
        <h2 class="mb-0"><?php echo e(Helper::translation(2040,$translate)); ?></h2>
        <p class="mb-0"><a href="<?php echo e(URL::to('/')); ?>"><?php echo e(Helper::translation(1913,$translate)); ?></a> <span class="split">&gt;</span> <span><?php echo e(Helper::translation(2040,$translate)); ?></span></p>
      </div>
    </section>
   <main role="main">
      <div class="container mt-3" id="demo">
         <div>
           
            <div class="col-md-12">
                    <?php $__currentLoopData = $categories['display']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <input type="checkbox" name="category[]" value="cat-<?php echo e($menu->cat_id); ?>" data-path=".cat-<?php echo e($menu->cat_id); ?>" id="cat-<?php echo e($menu->cat_id); ?>"> <?php echo e($menu->category_name); ?><br/>
                       <?php if(count($menu->subcategory) != 0): ?>
                          <?php $__currentLoopData = $menu->subcategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                           <span class="move_subcategory"><input type="checkbox" name="category[]" value="subcat-<?php echo e($sub_category->subcat_id); ?>" data-path=".subcat-<?php echo e($sub_category->subcat_id); ?>" id="subcat-<?php echo e($sub_category->subcat_id); ?>"> <?php echo e($sub_category->subcategory_name); ?><br/></span>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                       <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    
                   
              
         	</div>
         </div>
      </div>
    </main>
    <?php echo $__env->make('footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('javascript', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </body>
</html>
<?php else: ?>
<?php echo $__env->make('503', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?><?php /**PATH D:\laragon\www\script1\resources\views/shop.blade.php ENDPATH**/ ?>