<?php

// подключение скриптов и стилей.
// В этом коммите подключения пока не работают
// ======================================================================

function ztheme_scripts() {
    wp_enqueue_style('ztheme-bootstrapcss', get_template_directory_uri() . '/assets/bootstrap/css/bootstrap.min.css');
    wp_enqueue_style('ztheme-style', get_stylesheet_uri());

    wp_enqueue_script('ztheme-popper', '//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'); // можно без https
    wp_enqueue_script('ztheme-bootstrapjs', get_template_directory_uri() . '/assets/bootstrap/js/bootstrap.min.js');
}

