<?php if ( ! defined( 'FW' ) ) {
    die( 'Forbidden' );
}

/**
 * @var array $atts
 */
?>

<span
    <?php if( !empty($atts['span_class']) ) echo "class='{$atts['span_class']}'" ?>
    <?php if( !empty($atts['span_id']) ) echo "id='{$atts['span_id']}'" ?>
    <?php if( !empty($atts['span_data_attrs']) ) echo $atts['span_data_attrs'] ?>
>
    <?php if( !empty($atts['span_icon']) ): ?>
        <i class="<?php echo $atts['span_icon'] ?>"></i>
    <?php endif; ?>
    <?php if( !empty($atts['span_content']) ) echo $atts['span_content'] ?>
</span>