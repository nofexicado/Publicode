<!DOCTYPE html>
<html lang="en">
<head>
<title><?php if(Auth::user()->user_type == 'vendor'): ?><?php echo e(__('Edit Attribute Type')); ?><?php else: ?><?php echo e(__('404 Page Not Found!')); ?><?php endif; ?>  - <?php echo e($allsettings->site_title); ?></title>
<?php echo $__env->make('style', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>
<body>
<?php echo $__env->make('header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php if(Auth::user()->user_type == 'vendor'): ?>
    <section class="headerbg" style="background-image: url('<?php echo e(url('/')); ?>/public/storage/settings/<?php echo e($allsettings->site_header_background); ?>');">
      <div class="container text-left">
        <h2 class="mb-0"><?php echo e(__('Edit Attribute Type')); ?></h2>
        <p class="mb-0"><a href="<?php echo e(URL::to('/')); ?>">Home</a> <span class="split">&gt;</span> <span><?php echo e(__('Edit Attribute Type')); ?></span></p>
      </div>
    </section>
    <main role="main">
     <div class="container page-white-box mt-3">
     <div class="row">
	     <div class="col-md-12">
             <?php if($message = Session::get('success')): ?>
                   <div class="alert alert-success" role="alert">
                                    <span class="alert_icon lnr lnr-checkmark-circle"></span>
                                    <?php echo e($message); ?>

                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span class="fa fa-close" aria-hidden="true"></span>
                                    </button>
                                </div>
            <?php endif; ?>
            <?php if($message = Session::get('error')): ?>
            <div class="alert alert-danger" role="alert">
                                    <span class="alert_icon lnr lnr-warning"></span>
                                    <?php echo e($message); ?>

                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span class="fa fa-close" aria-hidden="true"></span>
                                    </button>
                                </div>
            <?php endif; ?>
            <?php if(!$errors->isEmpty()): ?>
            <div class="alert alert-danger" role="alert">
            <span class="alert_icon lnr lnr-warning"></span>
            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
             
            <?php echo e($error); ?>

    
           <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span class="fa fa-close" aria-hidden="true"></span>
            </button>
            </div>
            <?php endif; ?>
            </div>
        </div>
    <div class="row">
        <div class="col-md-12">
             <form action="<?php echo e(route('edit-attribute-type')); ?>" class="setting_form" id="contact_form" method="post" enctype="multipart/form-data">
             <?php echo e(csrf_field()); ?>

                <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="name">Attribute Type <span class="required">*</span></label>
                        <input id="attribute_name" name="attribute_name" type="text" class="form-control" value="<?php echo e($edit['type']->attribute_name); ?>" data-bvalidator="required">
                    </div>
                    <div class="col-sm-6">
                        <label for="username">Status <span class="required">*</span></label>
                        <select name="attribute_status" class="form-control" data-bvalidator="required">
                                                <option value=""></option>
                                                <option value="1" <?php if($edit['type']->attribute_status == 1): ?> selected <?php endif; ?>>Active</option>
                                                <option value="0" <?php if($edit['type']->attribute_status == 0): ?> selected <?php endif; ?>>InActive</option>
                                                </select>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="inputContactNumber">Display Order</label>
                        <input id="attribute_order" name="attribute_order" type="text" value="<?php echo e($edit['type']->attribute_order); ?>" class="form-control">
                    </div>
                    <div class="col-sm-6">
                       
                    </div>
                </div>
                <input type="hidden" name="attribute_id" value="<?php echo e($edit['type']->attribute_id); ?>">
                <input type="hidden" name="user_id" value="<?php echo e(Auth::user()->id); ?>">
                <button type="submit" class="btn button-color float-left"><?php echo e(__('Submit')); ?></button>
            </form>
        </div>
    </div>
</div>
</main>
<?php else: ?>
<?php echo $__env->make('not-found', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>
    <?php echo $__env->make('footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('javascript', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </body>
</html>
<?php /**PATH D:\xampp\htdocs\zigkart\resources\views/edit-attribute-type.blade.php ENDPATH**/ ?>