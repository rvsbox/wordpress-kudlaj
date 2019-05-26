<?php get_header(); ?>

<?php if (get_theme_mod('clean_home_category')): ?>
    <!-- вывод рубрики -->
    <div id="fh5co-portfolio">

        <?php $query = new WP_Query(array(
            'category_name' => get_theme_mod('clean_home_category'),
            'posts_per_page' => 4,
        )); ?>

        <?php if ($query->have_posts()) : $i = 1;
            while ($query->have_posts()) : $query->the_post(); ?>
                <?php
                if (has_post_thumbnail()) {
                    $img_url = get_the_post_thumbnail_url();
                } else {
                    $img_url = 'https://picsum.photos/1280/864';
                }
                ?>

                <div class="fh5co-portfolio-item <?php if ($i % 2 == 0) echo 'fh5co-img-right'; ?>">
                    <div class="fh5co-portfolio-figure animate-box"
                         style="background-image: url(<?php echo $img_url; ?>);"></div>
                    <div class="fh5co-portfolio-description">
                        <h2><?php the_title(); ?></h2>
                        <?php the_content(''); ?>
                        <p><a href="<?php the_permalink(); ?>"
                              class="btn btn-primary"><?php _e('Read more', 'clean'); ?></a></p>
                    </div>
                </div>

                <?php $i++; endwhile; ?>
        <?php else: ?>
            <!-- no posts found -->
        <?php endif; ?>
        <?php wp_reset_postdata(); ?>

    </div>
    <div class="clearfix"></div>
<?php endif; ?>

    <!-- вывод остального контента основной страницы -->
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
    <?php the_content(); ?>
<?php endwhile; ?>
    <!-- post navigation -->
<?php else: ?>
    <!-- no posts found -->
<?php endif; ?>

<?php get_footer();
