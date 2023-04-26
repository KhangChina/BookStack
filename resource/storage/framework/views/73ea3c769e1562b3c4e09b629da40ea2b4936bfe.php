<header id="header" component="header-mobile-toggle" class="primary-background">
    <div class="grid mx-l">

        <div>
            <a href="<?php echo e(url('/')); ?>" data-shortcut="home_view" class="logo">
                <?php if(setting('app-logo', '') !== 'none'): ?>
                    <img class="logo-image" src="<?php echo e(setting('app-logo', '') === '' ? url('/logo.png') : url(setting('app-logo', ''))); ?>" alt="Logo">
                <?php endif; ?>
                <?php if(setting('app-name-header')): ?>
                    <span class="logo-text"><?php echo e(setting('app-name')); ?></span>
                <?php endif; ?>
            </a>
            <button type="button"
                    refs="header-mobile-toggle@toggle"
                    title="<?php echo e(trans('common.header_menu_expand')); ?>"
                    aria-expanded="false"
                    class="mobile-menu-toggle hide-over-l"><?php echo icon('more'); ?></button>
        </div>

        <div class="flex-container-column items-center justify-center hide-under-l">
            <?php if(hasAppAccess()): ?>
            <form component="global-search" action="<?php echo e(url('/search')); ?>" method="GET" class="search-box" role="search" tabindex="0">
                <button id="header-search-box-button"
                        refs="global-search@button"
                        type="submit"
                        aria-label="<?php echo e(trans('common.search')); ?>"
                        tabindex="-1"><?php echo icon('search'); ?></button>
                <input id="header-search-box-input"
                       refs="global-search@input"
                       type="text"
                       name="term"
                       data-shortcut="global_search"
                       autocomplete="off"
                       aria-label="<?php echo e(trans('common.search')); ?>" placeholder="<?php echo e(trans('common.search')); ?>"
                       value="<?php echo e($searchTerm ?? ''); ?>">
                <div refs="global-search@suggestions" class="global-search-suggestions card">
                    <div refs="global-search@loading" class="text-center px-m global-search-loading"><?php echo $__env->make('common.loading-icon', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?></div>
                    <div refs="global-search@suggestion-results" class="px-m"></div>
                    <button class="text-button card-footer-link" type="submit"><?php echo e(trans('common.view_all')); ?></button>
                </div>
            </form>
            <?php endif; ?>
        </div>

        <nav refs="header-mobile-toggle@menu" class="header-links">
            <div class="links text-center">
                <?php if(hasAppAccess()): ?>
                    <a class="hide-over-l" href="<?php echo e(url('/search')); ?>"><?php echo icon('search'); ?><?php echo e(trans('common.search')); ?></a>
                    <?php if(userCanOnAny('view', \BookStack\Entities\Models\Bookshelf::class) || userCan('bookshelf-view-all') || userCan('bookshelf-view-own')): ?>
                        <a href="<?php echo e(url('/shelves')); ?>" data-shortcut="shelves_view"><?php echo icon('bookshelf'); ?><?php echo e(trans('entities.shelves')); ?></a>
                    <?php endif; ?>
                    <a href="<?php echo e(url('/books')); ?>" data-shortcut="books_view"><?php echo icon('books'); ?><?php echo e(trans('entities.books')); ?></a>
                    <?php if(signedInUser() && userCan('settings-manage')): ?>
                        <a href="<?php echo e(url('/settings')); ?>" data-shortcut="settings_view"><?php echo icon('settings'); ?><?php echo e(trans('settings.settings')); ?></a>
                    <?php endif; ?>
                    <?php if(signedInUser() && userCan('users-manage') && !userCan('settings-manage')): ?>
                        <a href="<?php echo e(url('/settings/users')); ?>" data-shortcut="settings_view"><?php echo icon('users'); ?><?php echo e(trans('settings.users')); ?></a>
                    <?php endif; ?>
                <?php endif; ?>

                <?php if(!signedInUser()): ?>
                    <?php if(setting('registration-enabled') && config('auth.method') === 'standard'): ?>
                        <a href="<?php echo e(url('/register')); ?>"><?php echo icon('new-user'); ?><?php echo e(trans('auth.sign_up')); ?></a>
                    <?php endif; ?>
                    <a href="<?php echo e(url('/login')); ?>"><?php echo icon('login'); ?><?php echo e(trans('auth.log_in')); ?></a>
                <?php endif; ?>
            </div>
            <?php if(signedInUser()): ?>
                <?php $currentUser = user(); ?>
                <div class="dropdown-container" component="dropdown" option:dropdown:bubble-escapes="true">
                        <span class="user-name py-s hide-under-l" refs="dropdown@toggle"
                              aria-haspopup="true" aria-expanded="false" aria-label="<?php echo e(trans('common.profile_menu')); ?>" tabindex="0">
                            <img class="avatar" src="<?php echo e($currentUser->getAvatar(30)); ?>" alt="<?php echo e($currentUser->name); ?>">
                            <span class="name"><?php echo e($currentUser->getShortName(9)); ?></span> <?php echo icon('caret-down'); ?>
                        </span>
                    <ul refs="dropdown@menu" class="dropdown-menu" role="menu">
                        <li>
                            <a href="<?php echo e(url('/favourites')); ?>" data-shortcut="favourites_view" class="icon-item">
                                <?php echo icon('star'); ?>
                                <div><?php echo e(trans('entities.my_favourites')); ?></div>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo e($currentUser->getProfileUrl()); ?>" data-shortcut="profile_view" class="icon-item">
                                <?php echo icon('user'); ?>
                                <div><?php echo e(trans('common.view_profile')); ?></div>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo e($currentUser->getEditUrl()); ?>" class="icon-item">
                                <?php echo icon('edit'); ?>
                                <div><?php echo e(trans('common.edit_profile')); ?></div>
                            </a>
                        </li>
                        <li>
                            <form action="<?php echo e(url(config('auth.method') === 'saml2' ? '/saml2/logout' : '/logout')); ?>"
                                  method="post">
                                <?php echo e(csrf_field()); ?>

                                <button class="icon-item" data-shortcut="logout">
                                    <?php echo icon('logout'); ?>
                                    <div><?php echo e(trans('auth.logout')); ?></div>
                                </button>
                            </form>
                        </li>
                        <li><hr></li>
                        <li>
                            <a href="<?php echo e(url('/preferences/shortcuts')); ?>" class="icon-item">
                                <?php echo icon('shortcuts'); ?>
                                <div><?php echo e(trans('preferences.shortcuts')); ?></div>
                            </a>
                        </li>
                        <li>
                            <?php echo $__env->make('common.dark-mode-toggle', ['classes' => 'icon-item'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </li>
                    </ul>
                </div>
            <?php endif; ?>
        </nav>

    </div>
</header>
<?php /**PATH /var/www/html/resources/views/common/header.blade.php ENDPATH**/ ?>