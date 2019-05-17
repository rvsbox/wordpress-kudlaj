<?php

// подключение скриптов и стилей
// ======================================================================

function ztheme_scripts() {
    wp_enqueue_style('ztheme-bootstrapcss', get_template_directory_uri() . '/assets/bootstrap/css/bootstrap.min.css');
    wp_enqueue_style('ztheme-style', get_stylesheet_uri());

    wp_deregister_script( 'jquery' ); // WP имеет в комплекте jquery, соответственно необходимо удалить базовую регистрацию jquery
    wp_register_script( 'jquery', '//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js', array(), false, true); // подключаем свой jquery

    wp_enqueue_script('ztheme-popper', '//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js', array('jquery'), false, true); // jquery - установка зависимости
    wp_enqueue_script('ztheme-bootstrapjs', get_template_directory_uri() . '/assets/bootstrap/js/bootstrap.min.js', array('jquery'), false, true);
}

add_action('wp_enqueue_scripts', 'ztheme_scripts');


// отключаем создание миниатюр файлов для указанных размеров
/*add_filter( 'intermediate_image_sizes', 'delete_intermediate_image_sizes' );
function delete_intermediate_image_sizes( $sizes ){
    // размеры которые нужно удалить
    return array_diff( $sizes, array(
        'medium_large',
    ) );
}*/