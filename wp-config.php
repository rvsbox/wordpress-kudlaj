<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'ztheme' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '||1+&I/.Lh</4~xL2~)&gQ=)!G|[i.%]Z$|0K`YX[9r@;w}Ok|a2B:w?pG]ED.y?');
define('SECURE_AUTH_KEY',  'Pj+E%|+B3<i(6-;iN:~N9Ei<!oF]YlreJK90q+BF*:)ZdtU_AYhia[:e,Kmy:|!-');
define('LOGGED_IN_KEY',    '*GGyU+aHq)MTsNVwoG?mbq4`vAdu2jFHXGYunf3=_g|EO.G[iS|k@#Rpiq&%;e$/');
define('NONCE_KEY',        'y5j6*&mM&X8,vA~9YHRN:{=t CEL>a0nm&MC.&)c^#nd;[^tX<h!Q2#O.tlD_.Aq');
define('AUTH_SALT',        'Qz]J R]T^%+E}+s+Iw!xSNc9y;Z:( g$*/-L =|7J^)DY:+;E? q#Y7)/a>(2aHk');
define('SECURE_AUTH_SALT', 'C|_8qc])IjXXoXzl,61d-Ro-d#ChRg%@u3R~ofvtoW]5--9{$dd]Utw_oA W8{WH');
define('LOGGED_IN_SALT',   ',U7E$dvNqZU||d#(+%^[+1AA^w7E:al,%-oUy(Q#I@)z(=b&a=),%;Uag/!FB<xZ');
define('NONCE_SALT',       'fEOPLp OXnM[R9-;xRDr520uf|7FFz~&D;]x%%B[n4ISDRc+PS59$&.;UB<I-c$H');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
