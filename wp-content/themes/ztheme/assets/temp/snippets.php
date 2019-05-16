<!-- цикл для сниппета -->
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
    <!-- post -->
    <h4><?php the_title(); ?></h4>
<?php endwhile; ?>
    <!-- post navigation -->
<?php else: ?>
    <!-- no posts found -->
    <p>Постов нет...</p>
<?php endif; ?>