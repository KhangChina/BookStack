<div component="notification"
     option:notification:type="success"
     option:notification:auto-hide="true"
     option:notification:show="<?php echo e(session()->has('success') ? 'true' : 'false'); ?>"
     style="display: none;"
     class="notification pos"
     role="alert">
    <?php echo icon('check-circle'); ?> <span><?php if(session()->has('success')): ?><?php echo nl2br(htmlentities(session()->get('success'))); ?><?php endif; ?></span><div class="dismiss"><?php echo icon('close'); ?></div>
</div>

<div component="notification"
     option:notification:type="warning"
     option:notification:auto-hide="false"
     option:notification:show="<?php echo e(session()->has('warning') ? 'true' : 'false'); ?>"
     style="display: none;"
     class="notification warning"
     role="alert">
    <?php echo icon('info'); ?> <span><?php if(session()->has('warning')): ?><?php echo nl2br(htmlentities(session()->get('warning'))); ?><?php endif; ?></span><div class="dismiss"><?php echo icon('close'); ?></div>
</div>

<div component="notification"
     option:notification:type="error"
     option:notification:auto-hide="false"
     option:notification:show="<?php echo e(session()->has('error') ? 'true' : 'false'); ?>"
     style="display: none;"
     class="notification neg"
     role="alert">
    <?php echo icon('danger'); ?> <span><?php if(session()->has('error')): ?><?php echo nl2br(htmlentities(session()->get('error'))); ?><?php endif; ?></span><div class="dismiss"><?php echo icon('close'); ?></div>
</div><?php /**PATH /var/www/html/resources/views/common/notifications.blade.php ENDPATH**/ ?>