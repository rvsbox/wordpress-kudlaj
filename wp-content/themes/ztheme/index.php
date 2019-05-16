<?php get_header(); ?>

<h1>Hello, world!</h1>

<!-- проверка наличия постов -->
<?php if (have_posts()) : $i = 1;
    while (have_posts()) : the_post(); ?>
        <!-- post -->
        <h4><?= $i ?>. <?php the_title(); ?></h4>
        <?php $i++; endwhile; ?>
    <!-- post navigation -->
<?php else: ?>
    <!-- no posts found -->
    <p>Постов нет...</p>
<?php endif; ?>

<?php get_footer(); ?>


