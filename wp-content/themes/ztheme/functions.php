<?php

require_once 'Ztheme_Menu.php';

function debug($data) {
    echo '<pre>' . print_r($data, 1) . '</pre>';
}


// подключение скриптов и стилей
// ======================================================================

function ztheme_scripts() {
    wp_enqueue_style('ztheme-bootstrapcss', get_template_directory_uri() . '/assets/bootstrap/css/bootstrap.min.css');
    wp_enqueue_style('ztheme-style', get_stylesheet_uri());

    wp_deregister_script('jquery'); // WP имеет в комплекте jquery, соответственно необходимо удалить базовую регистрацию jquery
    wp_register_script('jquery', '//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js', array(), false, true); // подключаем свой jquery

    wp_enqueue_script('ztheme-popper', '//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js', array('jquery'), false, true); // jquery - установка зависимости
    wp_enqueue_script('ztheme-bootstrapjs', get_template_directory_uri() . '/assets/bootstrap/js/bootstrap.min.js', array('jquery'), false, true);
}

add_action('wp_enqueue_scripts', 'ztheme_scripts');


// функция add_theme_support() для возможности добавления миниатюр в посты
// ======================================================================

function ztheme_setup() {
    // функция для замены языка
    load_theme_textdomain('ztheme', get_template_directory() . '/languages');
    add_theme_support('post-thumbnails');
    // в Customize появится раздел Site Identity для добавления логотипа
    add_theme_support('custom-logo', array(
        'width' => '150',
        'height' => '40',
    ));
    // в Customize появится раздел разделы Colors, Background image
    add_theme_support('custom-background', array(
        'default-color' => 'ffffff', // цвет background по умолчанию
        'default-image' => get_template_directory_uri() . '/assets/images/background.png', // картинка background по умолчанию
    ));

    add_theme_support('custom-header', array(
        'default-image' => get_template_directory_uri() . '/assets/images/coffee.jpg',
        'width' => '2000',
        'height' => '1300',
    ));
    add_image_size('my-thumb', 100, 100);
    register_nav_menus(array( // в wp-admin появится Appearance - Menus
        'header_menu1' => __('Header menu 1', 'ztheme'),
        'footer_menu2' => __('Footer menu 2', 'ztheme'),
    ));
}

add_action('after_setup_theme', 'ztheme_setup');


// удаляет H2 из шаблона пагинации
// ======================================================================

add_filter('navigation_markup_template', 'my_navigation_template', 10, 2);
function my_navigation_template($template, $class) {
    return '
    <nav class="navigation" role="navigation">
        <div class="nav-links">%3$s</div>
    </nav>    
    ';
}

// выводим пагинацию
the_posts_pagination(array(
    'end_size' => 2,
));


// добавление sidebar. В админке WP будет добавлен раздел Appearance - Widgets
// ======================================================================

function ztheme_widgets_init() {
    register_sidebar(array(
        'name' => __('Right Sidebar', 'ztheme'),
        'id' => 'right-sidebar',
        'description' => __('Area for widgets in the right sidebar', 'ztheme'),
        //'before_widget' => '<div id="%1$s" class="widget %2$s">', // замена li, который по умолчанию, на div
        //'after_widget' => "</div>\n", // продолжение, закрывающий тег
    ));
}

add_action('widgets_init', 'ztheme_widgets_init');


// Customizer. Настройка установки цвета для ссылок
// ======================================================================

function ztheme_customize_register($wp_customize) {
    // добавление настройки
    $wp_customize->add_setting('ztheme_link_color', array(
        'default' => '#007bff',
        'sanitize_callback' => 'sanitize_hex_color',
        'transport' => 'postMessage',
    ));
    // элемент управления
    $wp_customize->add_control(
        new WP_Customize_Color_Control(
            $wp_customize,
            'ztheme_link_color',
            array(
                'label' => __('Link Color', 'ztheme'),
                'section' => 'colors',
                'setting' => 'ztheme_link_color',
            )
        )
    );

    // добавление раздела 'Information about site' в Customizer
    $wp_customize->add_section('ztheme_site_data', array(
        'title' => __('Site Information', 'ztheme'),
        'priority' => 10, // расположение раздела в Customizer
    ));
    $wp_customize->add_setting('ztheme_phone', array(
        'default' => '',
        'transport' => 'postMessage',
    ));
    // добавление элемента управления
    $wp_customize->add_control(
        'ztheme_phone',
        array(
            'label' => __('Phone', 'ztheme'),
            'section' => 'ztheme_site_data',
            'type' => 'text',
        )
    );

    // добавление опции в раздел 'Information about site'
    $wp_customize->add_setting('ztheme_show_phone', array(
        'default' => true,
        'transport' => 'postMessage',
    ));
    $wp_customize->add_control(
        'ztheme_show_phone',
        array(
            'label' => __('Show phone', 'ztheme'),
            'section' => 'ztheme_site_data',
            'type' => 'checkbox',
        )
    );
}

add_action('customize_register', 'ztheme_customize_register');


// для того чтобы настройки применились в Customizer
// ======================================================================

function ztheme_customize_css(){
$ztheme_link_color = get_theme_mod('ztheme_link_color');
echo <<<HEREDOC
<style type="text/css">
a { color: $ztheme_link_color; }
</style>
HEREDOC;

// альтернатива для HEREDOC
/**/
?><!--
    <style type="text/css">
        a { color: <?php /*echo get_theme_mod('ztheme_link_color'); */
?>; }
    </style>
    --><?php
}
add_action('wp_head', 'ztheme_customize_css');


// подключение скрипта ztheme-customize.js через хук WP
// ======================================================================

function ztheme_customize_js() {
    wp_enqueue_script('ztheme-customizer', get_template_directory_uri() . '/assets/js/ztheme-customize.js', array('jquery', 'customize-preview'), '', true);
}

add_action('customize_preview_init', 'ztheme_customize_js');