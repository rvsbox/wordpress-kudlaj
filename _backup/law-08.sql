-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 15 2019 г., 19:18
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `law`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-12 14:36:34', '2019-05-12 14:36:34', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ztheme.loc', 'yes'),
(2, 'home', 'http://ztheme.loc', 'yes'),
(3, 'blogname', 'law.', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'auricom@inbox.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:17:\"unyson/unyson.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'law', 'yes'),
(41, 'stylesheet', 'law', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '9', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', '[q.B!6:1x=7Jqy-yULHCux2<,^pg4C ?)`H0st}?]J!]9=.uZ[,2T;/C:s_L`.{g', 'no'),
(109, 'nonce_salt', '.g?-:8R&$P1q)Z//!ZbT4YnQUT(aj%n:;g,Lnbj4u!>lsg(RK2NSSXpQbDulsIR5', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:6:{i:1563208601;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1563244601;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1563261834;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563287954;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563288118;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(118, 'auth_key', '|4}<5@h MkV6YyPm<4MB:;|.gscQWxF0# rm0KR}_pF7Kv1@/U.I=wBsJ<NUK`^6', 'no'),
(119, 'auth_salt', '=s</*MIqN2&AOgrt,:,AnKyk]vsYR;p>|IuT<&6<:eIX +3Gw{WDm^gJ(ZzYo@$^', 'no'),
(120, 'logged_in_key', ')QoJrHJ{USWR,$S|L_Y|tlYEr8=78^X0pWo$sF&b/%NPIf(GO{uj.:<5B[t}hV<.', 'no'),
(121, 'logged_in_salt', 'e1Z/k5Jf 94+3_SM=L52_VjzD27 ?I^4x9{viQc[+>FphWos+J|X%~VQomO8ox_,', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(147, 'recovery_keys', 'a:0:{}', 'yes'),
(150, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1562319978;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(159, 'WPLANG', '', 'yes'),
(160, 'new_admin_email', 'auricom@inbox.ru', 'yes'),
(165, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.2-partial-1.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1563206152;s:15:\"version_checked\";s:5:\"5.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(208, 'recently_activated', 'a:0:{}', 'yes'),
(209, 'current_theme', 'law', 'yes'),
(210, 'theme_mods_law', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(211, 'theme_switched', '', 'yes'),
(233, 'recovery_mode_email_last_sent', '1562705205', 'yes'),
(242, 'fw_active_extensions', 'a:23:{s:4:\"blog\";a:0:{}s:6:\"update\";a:0:{}s:16:\"bitbucket-update\";a:0:{}s:13:\"custom-update\";a:0:{}s:13:\"github-update\";a:0:{}s:10:\"shortcodes\";a:0:{}s:12:\"page-builder\";a:0:{}s:17:\"editor-shortcodes\";a:0:{}s:7:\"builder\";a:0:{}s:5:\"forms\";a:0:{}s:13:\"contact-forms\";a:0:{}s:6:\"mailer\";a:0:{}s:5:\"media\";a:0:{}s:6:\"slider\";a:0:{}s:9:\"bx-slider\";a:0:{}s:11:\"nivo-slider\";a:0:{}s:12:\"owl-carousel\";a:0:{}s:17:\"population-method\";a:0:{}s:28:\"population-method-categories\";a:0:{}s:24:\"population-method-custom\";a:0:{}s:23:\"population-method-posts\";a:0:{}s:22:\"population-method-tags\";a:0:{}s:11:\"flex-slider\";a:0:{}}', 'yes'),
(268, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(269, '_transient_timeout_fw_brz_admin_notice', '1563611105', 'no'),
(270, '_transient_fw_brz_admin_notice', '1', 'no'),
(274, 'category_children', 'a:0:{}', 'yes'),
(314, '_site_transient_timeout_browser_01b80466de9751fc3c1cfc72f0950804', '1563740704', 'no'),
(315, '_site_transient_browser_01b80466de9751fc3c1cfc72f0950804', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"68.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(316, '_site_transient_timeout_php_check_e44f21d3db939dba4d400857da08796e', '1563740705', 'no'),
(317, '_site_transient_php_check_e44f21d3db939dba4d400857da08796e', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(334, '_site_transient_timeout_fw_ext_upd_gh_fw', '1563249478', 'no'),
(335, '_site_transient_fw_ext_upd_gh_fw', 'a:9:{s:31:\"ThemeFuse/Unyson-Blog-Extension\";s:6:\"v1.0.2\";s:32:\"ThemeFuse/Unyson-Forms-Extension\";s:7:\"v2.0.31\";s:33:\"ThemeFuse/Unyson-Mailer-Extension\";s:7:\"v1.2.12\";s:44:\"ThemeFuse/Unyson-PopulationMethods-Extension\";s:7:\"v1.0.19\";s:34:\"ThemeFuse/Unyson-Sliders-Extension\";s:7:\"v1.1.19\";s:37:\"ThemeFuse/Unyson-Shortcodes-Extension\";s:7:\"v1.3.31\";s:38:\"ThemeFuse/Unyson-PageBuilder-Extension\";s:7:\"v1.6.17\";s:33:\"ThemeFuse/Unyson-Update-Extension\";s:7:\"v1.0.12\";s:34:\"ThemeFuse/Unyson-Builder-Extension\";s:7:\"v1.2.11\";}', 'no'),
(337, '_site_transient_timeout_theme_roots', '1563207953', 'no'),
(338, '_site_transient_theme_roots', 'a:4:{s:3:\"law\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(339, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1563206158;s:7:\"checked\";a:4:{s:3:\"law\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.3\";s:15:\"twentyseventeen\";s:3:\"2.1\";s:13:\"twentysixteen\";s:3:\"1.9\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(340, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1563206157;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:17:\"unyson/unyson.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/unyson\";s:4:\"slug\";s:6:\"unyson\";s:6:\"plugin\";s:17:\"unyson/unyson.php\";s:11:\"new_version\";s:6:\"2.7.22\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/unyson/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/unyson.2.7.22.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/unyson/assets/icon-256x256.jpg?rev=1034261\";s:2:\"1x\";s:59:\"https://ps.w.org/unyson/assets/icon-128x128.jpg?rev=1034260\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/unyson/assets/banner-1544x500.png?rev=1034271\";s:2:\"1x\";s:61:\"https://ps.w.org/unyson/assets/banner-772x250.png?rev=1034270\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1562743366:1'),
(4, 6, '_edit_lock', '1562743512:1'),
(5, 7, '_edit_lock', '1563207520:1'),
(6, 8, 'fw:opt:ext:pb:page-builder:json', '[]'),
(7, 8, 'fw_options', 'a:0:{}'),
(8, 7, '_edit_last', '1'),
(9, 7, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"#f2f2f2\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"fh5co-counter\",\"custom_class\":\"fh5co-counters fh5co-bg-section\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-comment-o\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"23563\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Cases Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-trophy\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"5067\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Awards Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-graduation-cap\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"2587\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Lawyers\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]}]}]'),
(10, 7, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(11, 9, '_edit_lock', '1562747135:1'),
(12, 10, 'fw:opt:ext:pb:page-builder:json', '[]'),
(13, 10, 'fw_options', 'a:0:{}'),
(14, 9, '_edit_last', '1'),
(15, 9, 'fw:opt:ext:pb:page-builder:json', '[]'),
(16, 9, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:0;}}'),
(17, 12, '_edit_lock', '1562745828:1'),
(18, 13, '_edit_lock', '1562747160:1'),
(19, 14, '_edit_lock', '1562746130:1'),
(21, 15, 'fw_options', 'a:0:{}'),
(23, 16, '_edit_lock', '1562746528:1'),
(24, 17, 'fw:opt:ext:pb:page-builder:json', '[]'),
(25, 17, 'fw_options', 'a:0:{}'),
(26, 16, '_edit_last', '1'),
(27, 16, 'fw:opt:ext:pb:page-builder:json', '[]'),
(28, 16, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:0;}}'),
(29, 18, '_edit_lock', '1562746396:1'),
(30, 19, '_edit_lock', '1562746569:1'),
(31, 20, 'fw:opt:ext:pb:page-builder:json', '[]'),
(32, 20, 'fw_options', 'a:0:{}'),
(33, 19, '_edit_last', '1'),
(34, 19, 'fw:opt:ext:pb:page-builder:json', '[]'),
(35, 19, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:0;}}'),
(36, 21, '_edit_lock', '1562746625:1'),
(37, 22, 'fw:opt:ext:pb:page-builder:json', '[]'),
(38, 22, 'fw_options', 'a:0:{}'),
(39, 21, '_edit_last', '1'),
(40, 21, 'fw:opt:ext:pb:page-builder:json', '[]'),
(41, 21, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:0;}}'),
(42, 23, '_edit_lock', '1562746503:1'),
(43, 24, '_edit_lock', '1562746663:1'),
(44, 25, 'fw:opt:ext:pb:page-builder:json', '[]'),
(45, 25, 'fw_options', 'a:0:{}'),
(46, 24, '_edit_last', '1'),
(47, 24, 'fw:opt:ext:pb:page-builder:json', '[]'),
(48, 24, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:0;}}'),
(49, 26, '_menu_item_type', 'post_type'),
(50, 26, '_menu_item_menu_item_parent', '0'),
(51, 26, '_menu_item_object_id', '24'),
(52, 26, '_menu_item_object', 'page'),
(53, 26, '_menu_item_target', ''),
(54, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 26, '_menu_item_xfn', ''),
(56, 26, '_menu_item_url', ''),
(58, 27, '_menu_item_type', 'post_type'),
(59, 27, '_menu_item_menu_item_parent', '0'),
(60, 27, '_menu_item_object_id', '21'),
(61, 27, '_menu_item_object', 'page'),
(62, 27, '_menu_item_target', ''),
(63, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 27, '_menu_item_xfn', ''),
(65, 27, '_menu_item_url', ''),
(67, 28, '_menu_item_type', 'post_type'),
(68, 28, '_menu_item_menu_item_parent', '0'),
(69, 28, '_menu_item_object_id', '19'),
(70, 28, '_menu_item_object', 'page'),
(71, 28, '_menu_item_target', ''),
(72, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 28, '_menu_item_xfn', ''),
(74, 28, '_menu_item_url', ''),
(76, 29, '_menu_item_type', 'post_type'),
(77, 29, '_menu_item_menu_item_parent', '0'),
(78, 29, '_menu_item_object_id', '16'),
(79, 29, '_menu_item_object', 'page'),
(80, 29, '_menu_item_target', ''),
(81, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 29, '_menu_item_xfn', ''),
(83, 29, '_menu_item_url', ''),
(85, 30, '_menu_item_type', 'post_type'),
(86, 30, '_menu_item_menu_item_parent', '0'),
(87, 30, '_menu_item_object_id', '9'),
(88, 30, '_menu_item_object', 'page'),
(89, 30, '_menu_item_target', ''),
(90, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 30, '_menu_item_xfn', ''),
(92, 30, '_menu_item_url', ''),
(94, 31, '_menu_item_type', 'custom'),
(95, 31, '_menu_item_menu_item_parent', '0'),
(96, 31, '_menu_item_object_id', '31'),
(97, 31, '_menu_item_object', 'custom'),
(98, 31, '_menu_item_target', ''),
(99, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 31, '_menu_item_xfn', ''),
(101, 31, '_menu_item_url', '/'),
(104, 32, '_menu_item_type', 'taxonomy'),
(105, 32, '_menu_item_menu_item_parent', '30'),
(106, 32, '_menu_item_object_id', '7'),
(107, 32, '_menu_item_object', 'category'),
(108, 32, '_menu_item_target', ''),
(109, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 32, '_menu_item_xfn', ''),
(111, 32, '_menu_item_url', ''),
(113, 33, '_menu_item_type', 'taxonomy'),
(114, 33, '_menu_item_menu_item_parent', '30'),
(115, 33, '_menu_item_object_id', '8'),
(116, 33, '_menu_item_object', 'category'),
(117, 33, '_menu_item_target', ''),
(118, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 33, '_menu_item_xfn', ''),
(120, 33, '_menu_item_url', ''),
(122, 34, '_menu_item_type', 'taxonomy'),
(123, 34, '_menu_item_menu_item_parent', '30'),
(124, 34, '_menu_item_object_id', '9'),
(125, 34, '_menu_item_object', 'category'),
(126, 34, '_menu_item_target', ''),
(127, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 34, '_menu_item_xfn', ''),
(129, 34, '_menu_item_url', ''),
(131, 35, '_menu_item_type', 'taxonomy'),
(132, 35, '_menu_item_menu_item_parent', '30'),
(133, 35, '_menu_item_object_id', '10'),
(134, 35, '_menu_item_object', 'category'),
(135, 35, '_menu_item_target', ''),
(136, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 35, '_menu_item_xfn', ''),
(138, 35, '_menu_item_url', ''),
(140, 36, '_wp_trash_meta_status', 'publish'),
(141, 36, '_wp_trash_meta_time', '1562787219'),
(142, 37, '_edit_last', '1'),
(143, 37, 'fw_options', 'a:5:{s:6:\"slider\";a:5:{s:8:\"selected\";s:11:\"flex-slider\";s:9:\"bx-slider\";a:3:{s:17:\"population-method\";s:6:\"custom\";s:5:\"title\";s:0:\"\";s:15:\"custom-settings\";a:1:{s:6:\"test1z\";s:10:\"horizontal\";}}s:11:\"nivo-slider\";a:2:{s:17:\"population-method\";s:6:\"custom\";s:5:\"title\";s:0:\"\";}s:12:\"owl-carousel\";a:2:{s:17:\"population-method\";s:6:\"custom\";s:5:\"title\";s:0:\"\";}s:11:\"flex-slider\";a:2:{s:17:\"population-method\";s:6:\"custom\";s:5:\"title\";s:11:\"Home Slider\";}}s:9:\"populated\";s:1:\"1\";s:11:\"slider_type\";s:11:\"flex-slider\";s:5:\"title\";s:11:\"Home Slider\";s:13:\"custom-slides\";a:3:{i:0;a:5:{s:10:\"multimedia\";a:2:{s:8:\"selected\";s:5:\"image\";s:5:\"image\";a:1:{s:3:\"src\";a:2:{s:13:\"attachment_id\";s:2:\"40\";s:3:\"url\";s:50:\"//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg\";}}}s:5:\"thumb\";s:62:\"http://ztheme.loc/wp-content/uploads/2019/07/work_3-138x75.jpg\";s:5:\"title\";s:22:\"Expert Legal Solutions\";s:4:\"desc\";s:46:\"Free html5 templates Made by freehtml5.com\r\n\r\n\";s:13:\"extra-options\";a:2:{s:4:\"link\";s:21:\"http://wp2.loc/about/\";s:10:\"link_title\";s:19:\"Make An Appointment\";}}i:1;a:5:{s:10:\"multimedia\";a:2:{s:8:\"selected\";s:5:\"image\";s:5:\"image\";a:1:{s:3:\"src\";a:2:{s:13:\"attachment_id\";s:2:\"39\";s:3:\"url\";s:50:\"//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg\";}}}s:5:\"thumb\";s:62:\"http://ztheme.loc/wp-content/uploads/2019/07/work_2-138x75.jpg\";s:5:\"title\";s:24:\"Expert Legal Solutions 2\";s:4:\"desc\";s:46:\"Free html5 templates Made by freehtml5.com 2\r\n\";s:13:\"extra-options\";a:2:{s:4:\"link\";s:0:\"\";s:10:\"link_title\";s:0:\"\";}}i:2;a:5:{s:10:\"multimedia\";a:2:{s:8:\"selected\";s:5:\"image\";s:5:\"image\";a:1:{s:3:\"src\";a:2:{s:13:\"attachment_id\";s:2:\"38\";s:3:\"url\";s:50:\"//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg\";}}}s:5:\"thumb\";s:62:\"http://ztheme.loc/wp-content/uploads/2019/07/work_1-138x75.jpg\";s:5:\"title\";s:24:\"Expert Legal Solutions 3\";s:4:\"desc\";s:44:\"Free html5 templates Made by freehtml5.com 3\";s:13:\"extra-options\";a:2:{s:4:\"link\";s:0:\"\";s:10:\"link_title\";s:0:\"\";}}}}'),
(144, 37, '_edit_lock', '1562790085:1'),
(145, 38, '_wp_attached_file', '2019/07/work_1.jpg'),
(146, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:864;s:4:\"file\";s:18:\"2019/07/work_1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work_1-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"work_1-768x518.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"work_1-1024x691.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:691;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:7:\"resizes\";a:1:{s:6:\"138x75\";s:26:\"/2019/07/work_1-138x75.jpg\";}}'),
(147, 39, '_wp_attached_file', '2019/07/work_2.jpg'),
(148, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:847;s:4:\"file\";s:18:\"2019/07/work_2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work_2-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"work_2-768x508.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"work_2-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:7:\"resizes\";a:1:{s:6:\"138x75\";s:26:\"/2019/07/work_2-138x75.jpg\";}}'),
(149, 40, '_wp_attached_file', '2019/07/work_3.jpg'),
(150, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:856;s:4:\"file\";s:18:\"2019/07/work_3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work_3-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"work_3-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"work_3-1024x685.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:7:\"resizes\";a:1:{s:6:\"138x75\";s:26:\"/2019/07/work_3-138x75.jpg\";}}'),
(153, 42, 'fw:opt:ext:pb:page-builder:json', '[]'),
(154, 42, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:0;}}'),
(157, 44, 'fw:opt:ext:pb:page-builder:json', '[]'),
(158, 44, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:0;}}'),
(159, 45, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}],\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"}}]'),
(160, 45, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(161, 46, '_edit_lock', '1563136784:1'),
(162, 47, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}]},{\"type\":\"section\",\"_items\":[{\"type\":\"column\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}],\"width\":\"1_4\"}],\"atts\":{\"is_fullwidth\":false,\"background_color\":\"\",\"background_image\":\"\",\"video\":\"\",\"custom_id\":\"\",\"custom_class\":\"\"}}]'),
(163, 47, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(164, 48, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"#f2f2f2\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"\",\"custom_class\":\"fh5co-counters fh5co-bg-section\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_4\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]}]}]'),
(165, 48, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(166, 49, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"#f2f2f2\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"fh5co-counter\",\"custom_class\":\"fh5co-counters fh5co-bg-section\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_4\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}],\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"}}]}]'),
(167, 49, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(168, 50, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"#f2f2f2\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"fh5co-counter\",\"custom_class\":\"fh5co-counters fh5co-bg-section\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_4\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}],\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"}},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-comment-o\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"23563\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Cases Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-trophy\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"23563\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Cases Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]}]}]'),
(169, 50, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(170, 51, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"#f2f2f2\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"fh5co-counter\",\"custom_class\":\"fh5co-counters fh5co-bg-section\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_4\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}],\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"}},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-comment-o\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"23563\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Cases Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-trophy\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"5067\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Awards Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]}]}]'),
(171, 51, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(172, 52, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"#f2f2f2\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"fh5co-counter\",\"custom_class\":\"fh5co-counters fh5co-bg-section\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_4\",\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}],\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"}},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-comment-o\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"23563\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Cases Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-trophy\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"5067\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Awards Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-group\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"2587\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Lawyers\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]}]}]'),
(173, 52, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(174, 53, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"section\",\"atts\":{\"is_fullwidth\":true,\"background_color\":\"\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"home-slider\",\"custom_class\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"slider\",\"atts\":{\"slider_id\":\"37\",\"width\":\"\",\"height\":\"\"}}]},{\"type\":\"section\",\"atts\":{\"is_fullwidth\":false,\"background_color\":\"#f2f2f2\",\"background_image\":{\"type\":\"custom\",\"custom\":\"\",\"predefined\":\"\",\"data\":{\"icon\":\"\",\"css\":[]}},\"video\":\"\",\"custom_id\":\"fh5co-counter\",\"custom_class\":\"fh5co-counters fh5co-bg-section\"},\"_items\":[{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-user\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"27539\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Satisfied Clients\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-comment-o\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"23563\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Cases Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-trophy\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"5067\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Awards Won\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]},{\"type\":\"column\",\"width\":\"1_4\",\"atts\":{\"col_class\":\"text-center animate-box\",\"col_id\":\"\"},\"_items\":[{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"fa fa-graduation-cap\",\"span_content\":\"\",\"span_class\":\"icon\",\"span_id\":\"\",\"span_data_attrs\":\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"\",\"span_class\":\"fh5co-counter js-counter\",\"span_id\":\"\",\"span_data_attrs\":\"data-from=\\\"0\\\" data-to=\\\"2587\\\" data-speed=\\\"5000\\\" data-refresh-interval=\\\"50\\\"\"}},{\"type\":\"simple\",\"shortcode\":\"span\",\"atts\":{\"span_icon\":\"\",\"span_content\":\"Lawyers\",\"span_class\":\"fh5co-counter-label\",\"span_id\":\"\",\"span_data_attrs\":\"\"}}]}]}]'),
(175, 53, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-12 14:36:34', '2019-05-12 14:36:34', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-05-12 14:36:34', '2019-05-12 14:36:34', '', 0, 'http://ztheme.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2019-05-12 14:36:34', '2019-05-12 14:36:34', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://ztheme.loc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-05-12 14:36:34', '2019-05-12 14:36:34', '', 0, 'http://ztheme.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-12 14:36:34', '2019-05-12 14:36:34', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://ztheme.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-05-12 14:36:34', '2019-05-12 14:36:34', '', 0, 'http://ztheme.loc/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-07-10 07:23:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-10 07:23:54', '0000-00-00 00:00:00', '', 0, 'http://ztheme.loc/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-07-10 07:25:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-10 07:25:12', '0000-00-00 00:00:00', '', 0, 'http://ztheme.loc/?page_id=6', 0, 'page', '', 0),
(7, 1, '2019-07-10 07:26:53', '2019-07-10 07:26:53', '<section id=\'home-slider\' class=\"fw-main-row \">\n    <div class=\"fw-container-fluid\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 \">\n    \n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n    </div>\n</section>\n<section id=\'fh5co-counter\' class=\"fw-main-row fh5co-counters fh5co-bg-section\" style=\"background-color:#f2f2f2\">\n    <div class=\"fw-container\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-comment-o\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"23563\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Cases Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-trophy\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"5067\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Awards Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-graduation-cap\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"2587\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Lawyers</span></div>\n</div>\n\n    </div>\n</section>\n\n\n<!-- 2876e77e225f04590c04b43343b563bf -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-15 16:16:47', '2019-07-15 16:16:47', '', 0, 'http://ztheme.loc/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-07-10 07:26:53', '2019-07-10 07:26:53', '<!-- wp:heading -->\n<h2>Home page</h2>\n<!-- /wp:heading -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-10 07:26:53', '2019-07-10 07:26:53', '', 7, 'http://ztheme.loc/?p=8', 0, 'revision', '', 0),
(9, 1, '2019-07-10 07:27:34', '2019-07-10 07:27:34', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-07-10 07:27:34', '2019-07-10 07:27:34', '', 0, 'http://ztheme.loc/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-07-10 07:27:34', '2019-07-10 07:27:34', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-07-10 07:27:34', '2019-07-10 07:27:34', '', 9, 'http://ztheme.loc/?p=10', 0, 'revision', '', 0),
(11, 1, '2019-07-10 08:02:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-10 08:02:16', '0000-00-00 00:00:00', '', 0, 'http://ztheme.loc/?p=11', 0, 'post', '', 0),
(12, 1, '2019-07-10 08:06:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-10 08:06:03', '0000-00-00 00:00:00', '', 0, 'http://ztheme.loc/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-07-10 08:12:26', '2019-07-10 08:12:26', '<!-- wp:paragraph -->\n<p>test article</p>\n<!-- /wp:paragraph -->', 'Test Article', '', 'publish', 'open', 'open', '', 'test-article', '', '', '2019-07-10 08:28:18', '2019-07-10 08:28:18', '', 0, 'http://ztheme.loc/?p=13', 0, 'post', '', 0),
(14, 1, '2019-07-10 08:11:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-10 08:11:11', '0000-00-00 00:00:00', '', 0, 'http://ztheme.loc/?p=14', 0, 'post', '', 0),
(15, 1, '2019-07-10 08:12:26', '2019-07-10 08:12:26', '<!-- wp:paragraph -->\n<p>test article</p>\n<!-- /wp:paragraph -->', 'Test Article', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-07-10 08:12:26', '2019-07-10 08:12:26', '', 13, 'http://ztheme.loc/?p=15', 0, 'revision', '', 0),
(16, 1, '2019-07-10 08:15:27', '2019-07-10 08:15:27', '<!-- wp:paragraph -->\n<p>Page Practice Areas</p>\n<!-- /wp:paragraph -->', 'Practice Areas', '', 'publish', 'closed', 'closed', '', 'practice-areas', '', '', '2019-07-10 08:15:28', '2019-07-10 08:15:28', '', 0, 'http://ztheme.loc/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-07-10 08:15:27', '2019-07-10 08:15:27', '<!-- wp:paragraph -->\n<p>Page Practice Areas</p>\n<!-- /wp:paragraph -->', 'Practice Areas', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-07-10 08:15:27', '2019-07-10 08:15:27', '', 16, 'http://ztheme.loc/?p=17', 0, 'revision', '', 0),
(18, 1, '2019-07-10 08:15:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-10 08:15:35', '0000-00-00 00:00:00', '', 0, 'http://ztheme.loc/?p=18', 0, 'post', '', 0),
(19, 1, '2019-07-10 08:16:09', '2019-07-10 08:16:09', '<!-- wp:paragraph -->\n<p>Page Won Cases</p>\n<!-- /wp:paragraph -->', 'Won Cases', '', 'publish', 'closed', 'closed', '', 'won-cases', '', '', '2019-07-10 08:16:09', '2019-07-10 08:16:09', '', 0, 'http://ztheme.loc/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-07-10 08:16:09', '2019-07-10 08:16:09', '<!-- wp:paragraph -->\n<p>Page Won Cases</p>\n<!-- /wp:paragraph -->', 'Won Cases', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-07-10 08:16:09', '2019-07-10 08:16:09', '', 19, 'http://ztheme.loc/?p=20', 0, 'revision', '', 0),
(21, 1, '2019-07-10 08:17:05', '2019-07-10 08:17:05', '<!-- wp:paragraph -->\n<p>Page About</p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-07-10 08:17:05', '2019-07-10 08:17:05', '', 0, 'http://ztheme.loc/?page_id=21', 0, 'page', '', 0),
(22, 1, '2019-07-10 08:17:05', '2019-07-10 08:17:05', '<!-- wp:paragraph -->\n<p>Page About</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-07-10 08:17:05', '2019-07-10 08:17:05', '', 21, 'http://ztheme.loc/?p=22', 0, 'revision', '', 0),
(23, 1, '2019-07-10 08:17:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-10 08:17:24', '0000-00-00 00:00:00', '', 0, 'http://ztheme.loc/?p=23', 0, 'post', '', 0),
(24, 1, '2019-07-10 08:17:43', '2019-07-10 08:17:43', '<!-- wp:paragraph -->\n<p>Page Contact</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-07-10 08:17:43', '2019-07-10 08:17:43', '', 0, 'http://ztheme.loc/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-07-10 08:17:43', '2019-07-10 08:17:43', '<!-- wp:paragraph -->\n<p>Page Contact</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-07-10 08:17:43', '2019-07-10 08:17:43', '', 24, 'http://ztheme.loc/?p=25', 0, 'revision', '', 0),
(26, 1, '2019-07-10 08:21:01', '2019-07-10 08:21:01', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=26', 10, 'nav_menu_item', '', 0),
(27, 1, '2019-07-10 08:21:01', '2019-07-10 08:21:01', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=27', 9, 'nav_menu_item', '', 0),
(28, 1, '2019-07-10 08:21:01', '2019-07-10 08:21:01', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2019-07-10 08:21:01', '2019-07-10 08:21:01', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2019-07-10 08:21:01', '2019-07-10 08:21:01', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2019-07-10 08:21:01', '2019-07-10 08:21:01', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-07-10 08:29:15', '2019-07-10 08:29:15', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=32', 5, 'nav_menu_item', '', 0),
(33, 1, '2019-07-10 08:29:15', '2019-07-10 08:29:15', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=33', 6, 'nav_menu_item', '', 0),
(34, 1, '2019-07-10 08:29:15', '2019-07-10 08:29:15', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=34', 7, 'nav_menu_item', '', 0),
(35, 1, '2019-07-10 08:29:15', '2019-07-10 08:29:15', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-07-10 08:29:15', '2019-07-10 08:29:15', '', 0, 'http://ztheme.loc/?p=35', 8, 'nav_menu_item', '', 0),
(36, 1, '2019-07-10 19:33:39', '2019-07-10 19:33:39', '{\n    \"blogname\": {\n        \"value\": \"law.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-10 19:33:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e21b277a-0c35-4298-bfae-874499c1010a', '', '', '2019-07-10 19:33:39', '2019-07-10 19:33:39', '', 0, 'http://ztheme.loc/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2019-07-10 20:11:03', '2019-07-10 20:11:03', '', 'Home Slider', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2019-07-10 20:23:22', '2019-07-10 20:23:22', '', 0, 'http://ztheme.loc/?post_type=fw-slider&#038;p=37', 0, 'fw-slider', '', 0),
(38, 1, '2019-07-10 20:17:04', '2019-07-10 20:17:04', '', 'work_1', '', 'inherit', 'open', 'closed', '', 'work_1', '', '', '2019-07-10 20:17:04', '2019-07-10 20:17:04', '', 0, 'http://ztheme.loc/wp-content/uploads/2019/07/work_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-07-10 20:17:04', '2019-07-10 20:17:04', '', 'work_2', '', 'inherit', 'open', 'closed', '', 'work_2', '', '', '2019-07-10 20:17:04', '2019-07-10 20:17:04', '', 0, 'http://ztheme.loc/wp-content/uploads/2019/07/work_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-07-10 20:17:05', '2019-07-10 20:17:05', '', 'work_3', '', 'inherit', 'open', 'closed', '', 'work_3', '', '', '2019-07-10 20:17:05', '2019-07-10 20:17:05', '', 0, 'http://ztheme.loc/wp-content/uploads/2019/07/work_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-07-10 20:32:06', '2019-07-10 20:32:06', '<!-- wp:heading -->\n<h2>Home page</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-10 20:32:06', '2019-07-10 20:32:06', '', 7, 'http://ztheme.loc/?p=42', 0, 'revision', '', 0),
(44, 1, '2019-07-10 20:41:02', '2019-07-10 20:41:02', '<!-- wp:heading -->\n<h2>Home page</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-10 20:41:02', '2019-07-10 20:41:02', '', 7, 'http://ztheme.loc/?p=44', 0, 'revision', '', 0),
(45, 1, '2019-07-10 20:41:02', '2019-07-10 20:41:02', '<section id=\"home-slider\" class=\"fw-main-row \">\n	<div class=\"fw-container-fluid\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n	\n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n	</div>\n</section>\n\n\n<!-- 5d8409ca3ca123cb1dd57d5b8c039ce1 -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-10 20:41:02', '2019-07-10 20:41:02', '', 7, 'http://ztheme.loc/?p=45', 0, 'revision', '', 0),
(46, 1, '2019-07-14 20:41:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-14 20:41:26', '0000-00-00 00:00:00', '', 0, 'http://ztheme.loc/?page_id=46', 0, 'page', '', 0),
(47, 1, '2019-07-14 20:49:23', '2019-07-14 20:49:23', '<section id=\"home-slider\" class=\"fw-main-row \">\n	<div class=\"fw-container-fluid\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n	\n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n	</div>\n</section>\n<section id=\"\" class=\"fw-main-row \">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-3\">\n			div.fw_print_r {			max-height: 500px;			overflow-y: scroll;			background: #23282d;			margin: 10px 30px;			padding: 0;			border: 1px solid #F5F5F5;			border-radius: 3px;			position: relative;			z-index: 11111;		}		div.fw_print_r pre {			color: #78FF5B;			background: #23282d;			text-shadow: 1px 1px 0 #000;			font-family: Consolas, monospace;			font-size: 12px;			margin: 0;			padding: 5px;			display: block;			line-height: 16px;			text-align: left;		}		div.fw_print_r_group {			background: #f1f1f1;			margin: 10px 30px;			padding: 1px;			border-radius: 5px;			position: relative;			z-index: 11110;		}		div.fw_print_r_group div.fw_print_r {			margin: 9px;			border-width: 0;		}		<div class=\"fw_print_r\"><pre>array\n(\n    [span_icon] =&gt; &#039;fa fa-user&#039;\n    [span_content] =&gt; &#039;&#039;\n    [span_class] =&gt; &#039;icon&#039;\n    [span_id] =&gt; &#039;&#039;\n    [span_data_attrs] =&gt; &#039;&#039;\n)</pre></div><div class=\"fw_print_r\"><pre>array\n(\n    [span_icon] =&gt; &#039;&#039;\n    [span_content] =&gt; &#039;&#039;\n    [span_class] =&gt; &#039;fh5co-counter js-counter&#039;\n    [span_id] =&gt; &#039;&#039;\n    [span_data_attrs] =&gt; &#039;data-from=&quot;0&quot; data-to=&quot;27539&quot; data-speed=&quot;5000&quot; data-refresh-interval=&quot;50&quot;&#039;\n)</pre></div><div class=\"fw_print_r\"><pre>array\n(\n    [span_icon] =&gt; &#039;&#039;\n    [span_content] =&gt; &#039;Satisfied Clients&#039;\n    [span_class] =&gt; &#039;fh5co-counter-label&#039;\n    [span_id] =&gt; &#039;&#039;\n    [span_data_attrs] =&gt; &#039;&#039;\n)</pre></div></div>\n</div>\n\n	</div>\n</section>\n\n\n<!-- c66ebe57fa11708f3fe1d616491ba839 -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-14 20:49:23', '2019-07-14 20:49:23', '', 7, 'http://ztheme.loc/?p=47', 0, 'revision', '', 0),
(48, 1, '2019-07-15 15:57:58', '2019-07-15 15:57:58', '<section id=\"home-slider\" class=\"fw-main-row \">\n	<div class=\"fw-container-fluid\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12\">\n	\n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n	</div>\n</section>\n<section id=\"\" class=\"fw-main-row fh5co-counters fh5co-bg-section\" style=\"background-color:#f2f2f2\">\n	<div class=\"fw-container\">\n		<div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-3\">\n	\n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n</div>\n\n	</div>\n</section>\n\n\n<!-- 6ad3147091beb1d5c72f1001a6fbe42b -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-15 15:57:58', '2019-07-15 15:57:58', '', 7, 'http://ztheme.loc/?p=48', 0, 'revision', '', 0),
(49, 1, '2019-07-15 16:11:06', '2019-07-15 16:11:06', '<section id=\'home-slider\' class=\"fw-main-row \">\n    <div class=\"fw-container-fluid\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 \">\n    \n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n    </div>\n</section>\n<section id=\'fh5co-counter\' class=\"fw-main-row fh5co-counters fh5co-bg-section\" style=\"background-color:#f2f2f2\">\n    <div class=\"fw-container\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n</div>\n\n    </div>\n</section>\n\n\n<!-- e6ed59b0a7a19bfb6e05a050a1724888 -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-15 16:11:06', '2019-07-15 16:11:06', '', 7, 'http://ztheme.loc/?p=49', 0, 'revision', '', 0),
(50, 1, '2019-07-15 16:14:01', '2019-07-15 16:14:01', '<section id=\'home-slider\' class=\"fw-main-row \">\n    <div class=\"fw-container-fluid\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 \">\n    \n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n    </div>\n</section>\n<section id=\'fh5co-counter\' class=\"fw-main-row fh5co-counters fh5co-bg-section\" style=\"background-color:#f2f2f2\">\n    <div class=\"fw-container\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-comment-o\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"23563\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Cases Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-trophy\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"23563\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Cases Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n</div>\n\n    </div>\n</section>\n\n\n<!-- ddbbb53147308fad12ca269d5ab74bd4 -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-15 16:14:01', '2019-07-15 16:14:01', '', 7, 'http://ztheme.loc/?p=50', 0, 'revision', '', 0),
(51, 1, '2019-07-15 16:14:54', '2019-07-15 16:14:54', '<section id=\'home-slider\' class=\"fw-main-row \">\n    <div class=\"fw-container-fluid\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 \">\n    \n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n    </div>\n</section>\n<section id=\'fh5co-counter\' class=\"fw-main-row fh5co-counters fh5co-bg-section\" style=\"background-color:#f2f2f2\">\n    <div class=\"fw-container\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-comment-o\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"23563\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Cases Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-trophy\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"5067\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Awards Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n</div>\n\n    </div>\n</section>\n\n\n<!-- 558d1ec343ed19a4bceb7fd6988ce727 -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-15 16:14:54', '2019-07-15 16:14:54', '', 7, 'http://ztheme.loc/?p=51', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(52, 1, '2019-07-15 16:15:55', '2019-07-15 16:15:55', '<section id=\'home-slider\' class=\"fw-main-row \">\n    <div class=\"fw-container-fluid\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 \">\n    \n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n    </div>\n</section>\n<section id=\'fh5co-counter\' class=\"fw-main-row fh5co-counters fh5co-bg-section\" style=\"background-color:#f2f2f2\">\n    <div class=\"fw-container\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-comment-o\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"23563\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Cases Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-trophy\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"5067\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Awards Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-group\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"2587\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Lawyers</span></div>\n</div>\n\n    </div>\n</section>\n\n\n<!-- 0c3029a07f2f5a79b3a9ff784857c29f -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-15 16:15:55', '2019-07-15 16:15:55', '', 7, 'http://ztheme.loc/?p=52', 0, 'revision', '', 0),
(53, 1, '2019-07-15 16:16:47', '2019-07-15 16:16:47', '<section id=\'home-slider\' class=\"fw-main-row \">\n    <div class=\"fw-container-fluid\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 \">\n    \n    <aside id=\"fh5co-hero\" class=\"js-fullheight\">\n        <div class=\"flexslider js-fullheight\">\n            <ul class=\"slides\">\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_3.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com\r\n\r\n</h2>\n                                                                        <p><a class=\"btn btn-primary btn-lg\" href=\"http://wp2.loc/about/\">Make An Appointment</a></p>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_2.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 2</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 2\r\n</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                                <li style=\"background-image: url(//ztheme.loc/wp-content/uploads/2019/07/work_1.jpg)\">\n                    <div class=\"overlay-gradient\"></div>\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"col-md-8 col-md-offset-2 text-center js-fullheight slider-text\">\n                                <div class=\"slider-text-inner\">\n                                    <h1>Expert Legal Solutions 3</h1>\n                                    <h2>Free html5 templates Made by freehtml5.com 3</h2>\n                                                                    </div>\n                            </div>\n                        </div>\n                    </div>\n                </li>\n                            </ul>\n        </div>\n    </aside>\n</div>\n</div>\n\n    </div>\n</section>\n<section id=\'fh5co-counter\' class=\"fw-main-row fh5co-counters fh5co-bg-section\" style=\"background-color:#f2f2f2\">\n    <div class=\"fw-container\">\n        <div class=\"fw-row\">\n	<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-user\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"27539\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Satisfied Clients</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-comment-o\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"23563\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Cases Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-trophy\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"5067\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Awards Won</span></div>\n<div class=\"fw-col-xs-12 fw-col-sm-3 text-center animate-box\">\n    \n<span class=\'icon\'>\n            <i class=\"fa fa-graduation-cap\"></i>\n        </span>\n<span class=\'fh5co-counter js-counter\' data-from=\"0\" data-to=\"2587\" data-speed=\"5000\" data-refresh-interval=\"50\">\n        </span>\n<span class=\'fh5co-counter-label\'>\n        Lawyers</span></div>\n</div>\n\n    </div>\n</section>\n\n\n<!-- 2876e77e225f04590c04b43343b563bf -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-15 16:16:47', '2019-07-15 16:16:47', '', 7, 'http://ztheme.loc/?p=53', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(6, 'Header Menu', 'header-menu', 0),
(7, 'Web Design', 'web-design', 0),
(8, 'eCommerce', 'ecommerce', 0),
(9, 'Branding', 'branding', 0),
(10, 'API', 'api', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 7, 0),
(13, 8, 0),
(13, 9, 0),
(13, 10, 0),
(26, 6, 0),
(27, 6, 0),
(28, 6, 0),
(29, 6, 0),
(30, 6, 0),
(31, 6, 0),
(32, 6, 0),
(33, 6, 0),
(34, 6, 0),
(35, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 10),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"e2a51802d1d1b119d5eb540c39fbdf7891f5562124f22840c01b744e5e422d9a\";a:4:{s:10:\"expiration\";i:1563996704;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1562787104;}s:64:\"d93ab911721126c372169a1766abb71435c003a86bbc397457d7c7e23cd7f543\";a:4:{s:10:\"expiration\";i:1563308698;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1563135898;}s:64:\"d37e692a60a55e5d2fb807ff13c5430febdc2a089b40b9f839361b1d01d88449\";a:4:{s:10:\"expiration\";i:1563308700;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1563135900;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '11'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'post_dfw=off&editor=html&libraryContent=browse&mfold=o&hidetb=0'),
(20, 1, 'wp_user-settings-time', '1558901511'),
(21, 1, 'enable_custom_fields', ''),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '6');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BAfCnvzsKBJ.DSEfbb3ybOzBOdthp6/', 'admin', 'auricom@inbox.ru', '', '2019-05-12 14:36:34', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
