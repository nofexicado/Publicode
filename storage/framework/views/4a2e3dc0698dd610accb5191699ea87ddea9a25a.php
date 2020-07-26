<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<?php echo $__env->make('admin.stylesheet', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>
<body>
<?php echo $__env->make('admin.navigation', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<!-- Right Panel -->
    <?php if(in_array('products',$avilable)): ?>
    <div id="right-panel" class="right-panel">
       <?php echo $__env->make('admin.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
       <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Add Product</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    
                </div>
            </div>
        </div>
       <?php if(session('success')): ?>
            <div class="col-sm-12">
                <div class="alert  alert-success alert-dismissible fade show" role="alert">
                    <?php echo e(session('success')); ?>

                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
            </div>
        <?php endif; ?>
        <?php if(session('error')): ?>
            <div class="col-sm-12">
                <div class="alert  alert-danger alert-dismissible fade show" role="alert">
                    <?php echo e(session('error')); ?>

                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
            </div>
        <?php endif; ?>
        <?php if($errors->any()): ?>
            <div class="col-sm-12">
             <div class="alert  alert-danger alert-dismissible fade show" role="alert">
             <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php echo e($error); ?>

             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
             <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
             </div>
            </div>   
         <?php endif; ?>
         <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
                   <div class="col-md-12">
                       <div class="card">
                           <?php if($demo_mode == 'on'): ?>
                           <?php echo $__env->make('admin.demo-mode', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                           <?php else: ?>
                            <form action="<?php echo e(route('admin.add-product')); ?>" method="post" id="category_form" enctype="multipart/form-data">
                           <?php echo e(csrf_field()); ?>

                           <?php endif; ?>
                           <div class="col-md-6">
                           <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       <div class="form-group">
                                                <label for="name" class="control-label mb-1">Product Name <span class="require">*</span></label>
                                                <input id="product_name" name="product_name" type="text" class="form-control" data-bvalidator="required">
                                            </div>
                                            <div class="form-group">
                                                <label for="name" class="control-label mb-1">SKU <span class="require">*</span></label>
                                                <input id="product_sku" name="product_sku" type="text" class="form-control" data-bvalidator="required">
                                            </div>
                                            <div class="form-group">
                                                <label for="site_keywords" class="control-label mb-1">Short Description <span class="require">*</span></label>
                                                 <textarea name="product_short_desc" id="product_short_desc" rows="4" class="form-control noscroll_textarea" data-bvalidator="required,maxlen[160]"></textarea>
                                            </div> 
                                            <div class="form-group">
                                                <label for="site_desc" class="control-label mb-1">Description<span class="require">*</span></label>
                                                <textarea name="product_desc" id="summary-ckeditor" rows="6"  class="form-control" data-bvalidator="required"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="site_title" class="control-label mb-1"> Categories <span class="require">*</span></label>
                                                <select name="product_category[]" class="form-control" data-bvalidator="required" multiple>
                                                <?php $__currentLoopData = $categories['display']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="cat-<?php echo e($menu->cat_id); ?>"><?php echo e($menu->category_name); ?></option>
                                                     <?php $__currentLoopData = $menu->subcategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                     <option value="subcat-<?php echo e($sub_category->subcat_id); ?>" class="ml-2">- <?php echo e($sub_category->subcategory_name); ?></option>
                                                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                                                </select>
                                            </div> 
                                            <div class="form-group">
                                                <label for="name" class="control-label mb-1">Price (<?php echo e($allsettings->site_currency_symbol); ?>)<span class="require">*</span></label>
                                                <input id="product_price" name="product_price" type="text" class="form-control" data-bvalidator="required">
                                            </div>
                                            <div class="form-group">
                                                <label for="name" class="control-label mb-1">Offer Price (<?php echo e($allsettings->site_currency_symbol); ?>)</label>
                                                <input id="product_offer_price" name="product_offer_price" type="text" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="customer_earnings" class="control-label mb-1">Upload Featured Image <span class="require">*</span></label>
                                                <input type="file" id="product_image" name="product_image" class="form-control-file" data-bvalidator="required,extension[jpg:png:jpeg]" data-bvalidator-msg="Please select file of type .jpg, .png or .jpeg"></div> 
                                             <div class="form-group">
                                                <label for="customer_earnings" class="control-label mb-1">Upload Gallery Images</label>
                                                <input type="file" id="product_gallery[]" name="product_gallery[]" class="form-control-file" data-bvalidator="extension[jpg:png:jpeg]" data-bvalidator-msg="Please select file of type .jpg, .png or .jpeg" multiple>
                                             </div>
                                             <div class="form-group">
                                                <label for="name" class="control-label mb-1">Video Url</label>
                                                <input id="product_video_url" name="product_video_url" type="text" class="form-control">
                                                <small>( Example : https://www.youtube.com/watch?v=C0DPdy98e4c )</small>
                                     </div> 
                                     <div class="form-group">
                                                <label for="site_title" class="control-label mb-1"> Allow Seo? <span class="require">*</span></label>
                                                <select name="product_allow_seo" id="product_allow_seo" class="form-control" data-bvalidator="required">
                                                <option value=""></option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                                </select>
                                   </div>      
                                     <div id="ifseo">
                                     <div class="form-group">
                                           <label for="site_keywords" class="control-label mb-1">SEO Meta Keywords (max 160 chars) <span class="require">*</span></label>
                                            <textarea name="product_seo_keyword" id="product_seo_keyword" rows="4" class="form-control noscroll_textarea" data-bvalidator="required,maxlen[160]"></textarea>
                                       </div> 
                                       <div class="form-group">
                                           <label for="site_desc" class="control-label mb-1">SEO Meta Description (max 160 chars) <span class="require">*</span></label>
                                              <textarea name="product_seo_desc" id="product_seo_desc" rows="4" class="form-control noscroll_textarea" data-bvalidator="required,maxlen[160]"></textarea>
                                            </div>
                                          </div>  
                                    </div>
                                </div>
                              </div>
                            </div>
                           <div class="col-md-6">
                             <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                    <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">Vendor <span class="require">*</span></label>
                                                <select name="user_id" class="form-control" data-bvalidator="required">
                                                <option value=""></option>
                                                <?php $__currentLoopData = $vendor['view']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $vendor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($vendor->id); ?>"><?php echo e($vendor->username); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                            </div>
                                  <div class="form-group">
                                                <label for="site_keywords" class="control-label mb-1">Tags</label>
                                            <textarea name="product_tags" id="product_tags" rows="4" placeholder="separate tag with commas" class="form-control noscroll_textarea"></textarea>
                                            </div>
                                           <div class="form-group">
                                                <label for="site_title" class="control-label mb-1"> Featured <span class="require">*</span></label>
                                                <select name="product_featured" class="form-control" data-bvalidator="required">
                                                <option value=""></option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                                </select>
                                             </div>
                                    <div class="form-group">
                                                <label for="site_title" class="control-label mb-1"> Product Type <span class="require">*</span></label>
                                                <select name="product_type" id="product_type" class="form-control" data-bvalidator="required">
                                                <option value=""></option>
                                                <?php $__currentLoopData = $product_type; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $type): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($type); ?>"><?php echo e($type); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                            </div>
                                  <div id="ifphysical_external">
                                     <div class="form-group">
                                                <label for="site_keywords" class="control-label mb-1">Return Policy</label>
                                            <textarea name="product_return_policy" id="product_return_policy" rows="6" class="form-control noscroll_textarea"></textarea>
                                            </div> 
                                            <div class="form-group">
                                                <label for="name" class="control-label mb-1">Estimate Time ( Product delivery time )</label>
                                                <input id="product_estimate_time" name="product_estimate_time" type="text" class="form-control" data-bvalidator="digit,min[1]">
                                                <small>Days</small>
                                     </div>  
                                     <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">Condition <span class="require">*</span></label>
                                                <select name="product_condition" class="form-control" data-bvalidator="required">
                                                <option value=""></option>
                                                <option value="new">New</option>
                                                <option value="used">Used</option>
                                                </select>
                                           </div>
                                           <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">Brand</label>
                                                <select name="product_brand" class="form-control">
                                                <option value=""></option>
                                                <?php $__currentLoopData = $brand['view']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($brand->brand_id); ?>"><?php echo e($brand->brand_name); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                           </div>
                                           <div class="form-group">
                                                <label for="name" class="control-label mb-1">Available Stock</label>
                                                <input id="product_stock" name="product_stock" type="text" class="form-control" data-bvalidator="digit,min[0]">
                                                <small><span class="red-color">if leave empty "No Stock"</span></small>
                                     </div> 
                                     <?php $__currentLoopData = $attribute['display']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                     <div class="form-group">
                                                <label for="site_title" class="control-label mb-1"><?php echo e($attribute->attribute_name); ?></label>
                                                <select name="product_attribute[]" class="form-control" multiple>
                                                <?php $__currentLoopData = $attribute->attributevalue; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product_value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($product_value->attribute_value_id); ?>-<?php echo e($attribute->attribute_id); ?>"><?php echo e($product_value->attribute_value); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                                
                                            </div>
                                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                     </div>
                                     <div class="form-group" id="ifdigital">
                                                <label for="customer_earnings" class="control-label mb-1">Upload File (Zip Format Only)<span class="require">*</span></label>
                                                <input type="file" id="product_file" name="product_file" class="form-control-file" data-bvalidator="required,extension[zip]" data-bvalidator-msg="Please select file of type .zip"></div>   <div class="form-group" id="ifexternal">
                                                <label for="name" class="control-label mb-1">External Url <span class="require">*</span></label>
                                                <input id="product_external_url" name="product_external_url" type="text" class="form-control" data-bvalidator="required,url">
                                     </div> 
                                     <div id="ifphysical">
                                     <div class="form-group">
                                                <label for="name" class="control-label mb-1">Local Shipping Price (<?php echo e($allsettings->site_currency_symbol); ?>)</label>
                                                <input id="product_local_shipping_fee" name="product_local_shipping_fee" type="text" class="form-control" data-bvalidator="min[0]">
                                                <small>(Vendor country based shipping) <span class="red-color"> - if leave empty "free shipping"</span></small>
                                     </div> 
                                     <div class="form-group">
                                                <label for="name" class="control-label mb-1">World Shipping Price (<?php echo e($allsettings->site_currency_symbol); ?>)</label>
                                                <input id="product_global_shipping_fee" name="product_global_shipping_fee" type="text" class="form-control" data-bvalidator="min[0]">
                                                <small>(Vendor non country based shipping) <span class="red-color"> - if leave empty "free shipping"</span></small>
                                     </div>
                                    </div>
                                    <div class="form-group">
                                                <label for="site_title" class="control-label mb-1"> Flash Deals? <span class="require">*</span></label>
                                                <select name="flash_deals" id="flash_deals" class="form-control" data-bvalidator="required">
                                                <option value=""></option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                                </select>
                                                
                                            </div>      
                             <div id="ifdeal">
                            <div class="form-group">
                                                <label for="site_keywords" class="control-label mb-1">Deal Start Date <span class="require">*</span></label>
                                             <input id="flash_deal_start_date" name="flash_deal_start_date" type="text" class="form-control" data-bvalidator="required">
                                            </div> 
                               <div class="form-group">
                                                <label for="site_desc" class="control-label mb-1">Deal End Date <span class="require">*</span></label>
                                            <input id="flash_deal_end_date" name="flash_deal_end_date" type="text" class="form-control" data-bvalidator="required">
                                            </div>
                                  </div>  
                                 <input type="hidden" name="image_size" value="<?php echo e($allsettings->site_max_image_size); ?>"> 
                                  <input type="hidden" name="file_size" value="<?php echo e($allsettings->site_max_zip_size); ?>">            
                             </div>
                                </div>
                             </div>
                            </div>
                            <div class="col-md-12 no-padding">
                             <div class="card-footer">
                                 <button type="submit" name="submit" class="btn btn-primary btn-sm"><i class="fa fa-dot-circle-o"></i> Submit</button>
                                 <button type="reset" class="btn btn-danger btn-sm"><i class="fa fa-ban"></i> Reset </button>
                             </div>
                             </div>
                            </form>
                         </div> 
                      </div>
                 </div>
            </div><!-- .animated -->
        </div><!-- .content -->
     </div><!-- /#right-panel -->
    <?php else: ?>
    <?php echo $__env->make('admin.denied', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <!-- Right Panel -->
   <?php echo $__env->make('admin.javascript', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</body>
</html><?php /**PATH D:\xampp\htdocs\zigkart\resources\views/admin/add-product.blade.php ENDPATH**/ ?>