-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 01, 2023 at 06:26 PM
-- Server version: 10.9.5-MariaDB-1:10.9.5+maria~ubu2204
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstack_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `detail` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `entity_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `type`, `detail`, `user_id`, `ip`, `entity_id`, `entity_type`, `created_at`, `updated_at`) VALUES
(1, 'auth_login', 'standard; (1) Admin', 1, '172.19.0.1', NULL, NULL, '2023-04-01 11:24:00', '2023-04-01 11:24:00'),
(2, 'auth_login', 'standard; (1) Admin', 1, '172.19.0.1', NULL, NULL, '2023-04-01 11:25:43', '2023-04-01 11:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `api_tokens`
--

CREATE TABLE `api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `path` text NOT NULL,
  `extension` varchar(20) NOT NULL,
  `uploaded_to` int(11) NOT NULL,
  `external` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookshelves`
--

CREATE TABLE `bookshelves` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(180) NOT NULL,
  `slug` varchar(180) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookshelves_books`
--

CREATE TABLE `bookshelves_books` (
  `bookshelf_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `text` longtext DEFAULT NULL,
  `html` longtext DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `local_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deletions`
--

CREATE TABLE `deletions` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `deletable_type` varchar(100) NOT NULL,
  `deletable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_confirmations`
--

CREATE TABLE `email_confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entity_permissions`
--

CREATE TABLE `entity_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(25) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT 0,
  `create` tinyint(1) NOT NULL DEFAULT 0,
  `update` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `favouritable_id` int(11) NOT NULL,
  `favouritable_type` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `path` varchar(400) NOT NULL,
  `type` varchar(191) NOT NULL,
  `uploaded_to` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joint_permissions`
--

CREATE TABLE `joint_permissions` (
  `role_id` int(11) NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mfa_values`
--

CREATE TABLE `mfa_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `method` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_07_12_114933_create_books_table', 1),
(4, '2015_07_12_190027_create_pages_table', 1),
(5, '2015_07_13_172121_create_images_table', 1),
(6, '2015_07_27_172342_create_chapters_table', 1),
(7, '2015_08_08_200447_add_users_to_entities', 1),
(8, '2015_08_09_093534_create_page_revisions_table', 1),
(9, '2015_08_16_142133_create_activities_table', 1),
(10, '2015_08_29_105422_add_roles_and_permissions', 1),
(11, '2015_08_30_125859_create_settings_table', 1),
(12, '2015_08_31_175240_add_search_indexes', 1),
(13, '2015_09_04_165821_create_social_accounts_table', 1),
(14, '2015_09_05_164707_add_email_confirmation_table', 1),
(15, '2015_11_21_145609_create_views_table', 1),
(16, '2015_11_26_221857_add_entity_indexes', 1),
(17, '2015_12_05_145049_fulltext_weighting', 1),
(18, '2015_12_07_195238_add_image_upload_types', 1),
(19, '2015_12_09_195748_add_user_avatars', 1),
(20, '2016_01_11_210908_add_external_auth_to_users', 1),
(21, '2016_02_25_184030_add_slug_to_revisions', 1),
(22, '2016_02_27_120329_update_permissions_and_roles', 1),
(23, '2016_02_28_084200_add_entity_access_controls', 1),
(24, '2016_03_09_203143_add_page_revision_types', 1),
(25, '2016_03_13_082138_add_page_drafts', 1),
(26, '2016_03_25_123157_add_markdown_support', 1),
(27, '2016_04_09_100730_add_view_permissions_to_roles', 1),
(28, '2016_04_20_192649_create_joint_permissions_table', 1),
(29, '2016_05_06_185215_create_tags_table', 1),
(30, '2016_07_07_181521_add_summary_to_page_revisions', 1),
(31, '2016_09_29_101449_remove_hidden_roles', 1),
(32, '2016_10_09_142037_create_attachments_table', 1),
(33, '2017_01_21_163556_create_cache_table', 1),
(34, '2017_01_21_163602_create_sessions_table', 1),
(35, '2017_03_19_091553_create_search_index_table', 1),
(36, '2017_04_20_185112_add_revision_counts', 1),
(37, '2017_07_02_152834_update_db_encoding_to_ut8mb4', 1),
(38, '2017_08_01_130541_create_comments_table', 1),
(39, '2017_08_29_102650_add_cover_image_display', 1),
(40, '2018_07_15_173514_add_role_external_auth_id', 1),
(41, '2018_08_04_115700_create_bookshelves_table', 1),
(42, '2019_07_07_112515_add_template_support', 1),
(43, '2019_08_17_140214_add_user_invites_table', 1),
(44, '2019_12_29_120917_add_api_auth', 1),
(45, '2020_08_04_111754_drop_joint_permissions_id', 1),
(46, '2020_08_04_131052_remove_role_name_field', 1),
(47, '2020_09_19_094251_add_activity_indexes', 1),
(48, '2020_09_27_210059_add_entity_soft_deletes', 1),
(49, '2020_09_27_210528_create_deletions_table', 1),
(50, '2020_11_07_232321_simplify_activities_table', 1),
(51, '2020_12_30_173528_add_owned_by_field_to_entities', 1),
(52, '2021_01_30_225441_add_settings_type_column', 1),
(53, '2021_03_08_215138_add_user_slug', 1),
(54, '2021_05_15_173110_create_favourites_table', 1),
(55, '2021_06_30_173111_create_mfa_values_table', 1),
(56, '2021_07_03_085038_add_mfa_enforced_to_roles_table', 1),
(57, '2021_08_28_161743_add_export_role_permission', 1),
(58, '2021_09_26_044614_add_activities_ip_column', 1),
(59, '2021_11_26_070438_add_index_for_user_ip', 1),
(60, '2021_12_07_111343_create_webhooks_table', 1),
(61, '2021_12_13_152024_create_jobs_table', 1),
(62, '2021_12_13_152120_create_failed_jobs_table', 1),
(63, '2022_01_03_154041_add_webhooks_timeout_error_columns', 1),
(64, '2022_04_17_101741_add_editor_change_field_and_permission', 1),
(65, '2022_04_25_140741_update_polymorphic_types', 1),
(66, '2022_07_16_170051_drop_joint_permission_type', 1),
(67, '2022_08_17_092941_create_references_table', 1),
(68, '2022_09_02_082910_fix_shelf_cover_image_types', 1),
(69, '2022_10_07_091406_flatten_entity_permissions_table', 1),
(70, '2022_10_08_104202_drop_entity_restricted_field', 1),
(71, '2023_01_24_104625_refactor_joint_permissions_storage', 1),
(72, '2023_01_28_141230_copy_color_settings_for_dark_mode', 1),
(73, '2023_02_20_093655_increase_attachments_path_length', 1),
(74, '2023_02_23_200227_add_updated_at_index_to_pages', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `html` longtext NOT NULL,
  `text` longtext NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `draft` tinyint(1) NOT NULL DEFAULT 0,
  `markdown` longtext NOT NULL DEFAULT '',
  `revision_count` int(11) NOT NULL,
  `template` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) UNSIGNED NOT NULL,
  `editor` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_revisions`
--

CREATE TABLE `page_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `html` longtext NOT NULL,
  `text` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `book_slug` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'version',
  `markdown` longtext NOT NULL DEFAULT '',
  `summary` varchar(191) DEFAULT NULL,
  `revision_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(48, 3),
(48, 4),
(49, 1),
(49, 2),
(49, 3),
(49, 4),
(50, 1),
(50, 2),
(50, 3),
(50, 4),
(51, 1),
(51, 2),
(51, 3),
(51, 4),
(52, 1),
(52, 2),
(52, 3),
(52, 4),
(53, 1),
(53, 2),
(53, 3),
(53, 4),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(66, 2),
(66, 3),
(66, 4),
(67, 1),
(67, 2),
(67, 3),
(67, 4),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(75, 1),
(76, 1),
(76, 2),
(76, 3),
(76, 4),
(77, 1);

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` int(10) UNSIGNED NOT NULL,
  `from_type` varchar(25) NOT NULL,
  `to_id` int(10) UNSIGNED NOT NULL,
  `to_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `system_name` varchar(191) NOT NULL,
  `external_auth_id` varchar(180) NOT NULL DEFAULT '',
  `mfa_enforced` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `display_name`, `description`, `created_at`, `updated_at`, `system_name`, `external_auth_id`, `mfa_enforced`) VALUES
(1, 'Admin', 'Administrator of the whole application', '2023-04-01 11:18:04', '2023-04-01 11:18:04', 'admin', '', 0),
(2, 'Editor', 'User can edit Books, Chapters & Pages', '2023-04-01 11:18:04', '2023-04-01 11:18:04', '', '', 0),
(3, 'Viewer', 'User can view books & their content behind authentication', '2023-04-01 11:18:04', '2023-04-01 11:18:04', '', '', 0),
(4, 'Public', 'The role given to public visitors if allowed', '2023-04-01 11:18:07', '2023-04-01 11:18:07', 'public', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(19, 'settings-manage', 'Manage Settings', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(20, 'users-manage', 'Manage Users', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(21, 'user-roles-manage', 'Manage Roles & Permissions', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(22, 'restrictions-manage-all', 'Manage All Entity Permissions', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(23, 'restrictions-manage-own', 'Manage Entity Permissions On Own Content', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(24, 'book-create-all', 'Create All Books', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(25, 'book-create-own', 'Create Own Books', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(26, 'book-update-all', 'Update All Books', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(27, 'book-update-own', 'Update Own Books', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(28, 'book-delete-all', 'Delete All Books', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(29, 'book-delete-own', 'Delete Own Books', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(30, 'page-create-all', 'Create All Pages', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(31, 'page-create-own', 'Create Own Pages', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(32, 'page-update-all', 'Update All Pages', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(33, 'page-update-own', 'Update Own Pages', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(34, 'page-delete-all', 'Delete All Pages', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(35, 'page-delete-own', 'Delete Own Pages', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(36, 'chapter-create-all', 'Create All Chapters', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(37, 'chapter-create-own', 'Create Own Chapters', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(38, 'chapter-update-all', 'Update All Chapters', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(39, 'chapter-update-own', 'Update Own Chapters', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(40, 'chapter-delete-all', 'Delete All Chapters', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(41, 'chapter-delete-own', 'Delete Own Chapters', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(42, 'image-create-all', 'Create All Images', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(43, 'image-create-own', 'Create Own Images', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(44, 'image-update-all', 'Update All Images', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(45, 'image-update-own', 'Update Own Images', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(46, 'image-delete-all', 'Delete All Images', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(47, 'image-delete-own', 'Delete Own Images', NULL, '2023-04-01 11:18:06', '2023-04-01 11:18:06'),
(48, 'book-view-all', 'View All Books', NULL, '2023-04-01 11:18:07', '2023-04-01 11:18:07'),
(49, 'book-view-own', 'View Own Books', NULL, '2023-04-01 11:18:07', '2023-04-01 11:18:07'),
(50, 'page-view-all', 'View All Pages', NULL, '2023-04-01 11:18:07', '2023-04-01 11:18:07'),
(51, 'page-view-own', 'View Own Pages', NULL, '2023-04-01 11:18:07', '2023-04-01 11:18:07'),
(52, 'chapter-view-all', 'View All Chapters', NULL, '2023-04-01 11:18:07', '2023-04-01 11:18:07'),
(53, 'chapter-view-own', 'View Own Chapters', NULL, '2023-04-01 11:18:07', '2023-04-01 11:18:07'),
(54, 'attachment-create-all', 'Create All Attachments', NULL, '2023-04-01 11:18:08', '2023-04-01 11:18:08'),
(55, 'attachment-create-own', 'Create Own Attachments', NULL, '2023-04-01 11:18:08', '2023-04-01 11:18:08'),
(56, 'attachment-update-all', 'Update All Attachments', NULL, '2023-04-01 11:18:08', '2023-04-01 11:18:08'),
(57, 'attachment-update-own', 'Update Own Attachments', NULL, '2023-04-01 11:18:08', '2023-04-01 11:18:08'),
(58, 'attachment-delete-all', 'Delete All Attachments', NULL, '2023-04-01 11:18:08', '2023-04-01 11:18:08'),
(59, 'attachment-delete-own', 'Delete Own Attachments', NULL, '2023-04-01 11:18:08', '2023-04-01 11:18:08'),
(60, 'comment-create-all', 'Create All Comments', NULL, '2023-04-01 11:18:09', '2023-04-01 11:18:09'),
(61, 'comment-create-own', 'Create Own Comments', NULL, '2023-04-01 11:18:09', '2023-04-01 11:18:09'),
(62, 'comment-update-all', 'Update All Comments', NULL, '2023-04-01 11:18:09', '2023-04-01 11:18:09'),
(63, 'comment-update-own', 'Update Own Comments', NULL, '2023-04-01 11:18:09', '2023-04-01 11:18:09'),
(64, 'comment-delete-all', 'Delete All Comments', NULL, '2023-04-01 11:18:09', '2023-04-01 11:18:09'),
(65, 'comment-delete-own', 'Delete Own Comments', NULL, '2023-04-01 11:18:09', '2023-04-01 11:18:09'),
(66, 'bookshelf-view-all', 'View All BookShelves', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(67, 'bookshelf-view-own', 'View Own BookShelves', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(68, 'bookshelf-create-all', 'Create All BookShelves', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(69, 'bookshelf-create-own', 'Create Own BookShelves', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(70, 'bookshelf-update-all', 'Update All BookShelves', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(71, 'bookshelf-update-own', 'Update Own BookShelves', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(72, 'bookshelf-delete-all', 'Delete All BookShelves', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(73, 'bookshelf-delete-own', 'Delete Own BookShelves', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(74, 'templates-manage', 'Manage Page Templates', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(75, 'access-api', 'Access system API', NULL, '2023-04-01 11:18:10', '2023-04-01 11:18:10'),
(76, 'content-export', 'Export Content', NULL, '2023-04-01 11:18:12', '2023-04-01 11:18:12'),
(77, 'editor-change', 'Change page editor', NULL, '2023-04-01 11:18:12', '2023-04-01 11:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(180) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'string'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver` varchar(191) NOT NULL,
  `driver_id` varchar(191) NOT NULL,
  `avatar` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(11) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `image_id` int(11) NOT NULL DEFAULT 0,
  `external_auth_id` varchar(191) NOT NULL,
  `system_name` varchar(191) DEFAULT NULL,
  `slug` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `email_confirmed`, `image_id`, `external_auth_id`, `system_name`, `slug`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$aBz3acs7v8rv.7FGQI3vruzKQXn/cho9fmTtJ.vt3smdpCvwMsPBi', NULL, '2023-04-01 11:18:03', '2023-04-01 11:18:03', 1, 0, '', NULL, 'admin'),
(2, 'Guest', 'guest@example.com', '', NULL, '2023-04-01 11:18:07', '2023-04-01 11:18:07', 1, 0, '', 'public', 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `user_invites`
--

CREATE TABLE `user_invites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `viewable_id` int(11) NOT NULL,
  `viewable_type` varchar(191) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhooks`
--

CREATE TABLE `webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `endpoint` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `last_error` text NOT NULL DEFAULT '',
  `last_called_at` timestamp NULL DEFAULT NULL,
  `last_errored_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook_tracked_events`
--

CREATE TABLE `webhook_tracked_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `webhook_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_index` (`user_id`),
  ADD KEY `activities_entity_id_index` (`entity_id`),
  ADD KEY `activities_key_index` (`type`),
  ADD KEY `activities_created_at_index` (`created_at`),
  ADD KEY `activities_ip_index` (`ip`);

--
-- Indexes for table `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_tokens_token_id_unique` (`token_id`),
  ADD KEY `api_tokens_user_id_index` (`user_id`),
  ADD KEY `api_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_uploaded_to_index` (`uploaded_to`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_slug_index` (`slug`),
  ADD KEY `books_created_by_index` (`created_by`),
  ADD KEY `books_updated_by_index` (`updated_by`),
  ADD KEY `books_owned_by_index` (`owned_by`);

--
-- Indexes for table `bookshelves`
--
ALTER TABLE `bookshelves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshelves_slug_index` (`slug`),
  ADD KEY `bookshelves_created_by_index` (`created_by`),
  ADD KEY `bookshelves_updated_by_index` (`updated_by`),
  ADD KEY `bookshelves_owned_by_index` (`owned_by`);

--
-- Indexes for table `bookshelves_books`
--
ALTER TABLE `bookshelves_books`
  ADD PRIMARY KEY (`bookshelf_id`,`book_id`),
  ADD KEY `bookshelves_books_book_id_foreign` (`book_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapters_slug_index` (`slug`),
  ADD KEY `chapters_book_id_index` (`book_id`),
  ADD KEY `chapters_priority_index` (`priority`),
  ADD KEY `chapters_created_by_index` (`created_by`),
  ADD KEY `chapters_updated_by_index` (`updated_by`),
  ADD KEY `chapters_owned_by_index` (`owned_by`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  ADD KEY `comments_local_id_index` (`local_id`);

--
-- Indexes for table `deletions`
--
ALTER TABLE `deletions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deletions_deleted_by_index` (`deleted_by`),
  ADD KEY `deletions_deletable_type_index` (`deletable_type`),
  ADD KEY `deletions_deletable_id_index` (`deletable_id`);

--
-- Indexes for table `email_confirmations`
--
ALTER TABLE `email_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_confirmations_user_id_index` (`user_id`),
  ADD KEY `email_confirmations_token_index` (`token`);

--
-- Indexes for table `entity_permissions`
--
ALTER TABLE `entity_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new_entity_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  ADD KEY `new_entity_permissions_role_id_index` (`role_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favouritable_index` (`favouritable_id`,`favouritable_type`),
  ADD KEY `favourites_user_id_index` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_type_index` (`type`),
  ADD KEY `images_uploaded_to_index` (`uploaded_to`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `joint_permissions`
--
ALTER TABLE `joint_permissions`
  ADD PRIMARY KEY (`role_id`,`entity_type`,`entity_id`),
  ADD KEY `joint_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  ADD KEY `joint_permissions_role_id_index` (`role_id`),
  ADD KEY `joint_permissions_status_index` (`status`),
  ADD KEY `joint_permissions_owner_id_index` (`owner_id`);

--
-- Indexes for table `mfa_values`
--
ALTER TABLE `mfa_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mfa_values_user_id_index` (`user_id`),
  ADD KEY `mfa_values_method_index` (`method`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_slug_index` (`slug`),
  ADD KEY `pages_book_id_index` (`book_id`),
  ADD KEY `pages_chapter_id_index` (`chapter_id`),
  ADD KEY `pages_priority_index` (`priority`),
  ADD KEY `pages_created_by_index` (`created_by`),
  ADD KEY `pages_updated_by_index` (`updated_by`),
  ADD KEY `pages_draft_index` (`draft`),
  ADD KEY `pages_template_index` (`template`),
  ADD KEY `pages_owned_by_index` (`owned_by`),
  ADD KEY `pages_updated_at_index` (`updated_at`);

--
-- Indexes for table `page_revisions`
--
ALTER TABLE `page_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_revisions_page_id_index` (`page_id`),
  ADD KEY `page_revisions_slug_index` (`slug`),
  ADD KEY `page_revisions_book_slug_index` (`book_slug`),
  ADD KEY `page_revisions_type_index` (`type`),
  ADD KEY `page_revisions_revision_number_index` (`revision_number`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `references_from_id_index` (`from_id`),
  ADD KEY `references_from_type_index` (`from_type`),
  ADD KEY `references_to_id_index` (`to_id`),
  ADD KEY `references_to_type_index` (`to_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_system_name_index` (`system_name`),
  ADD KEY `roles_external_auth_id_index` (`external_auth_id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_terms_term_index` (`term`),
  ADD KEY `search_terms_entity_type_index` (`entity_type`),
  ADD KEY `search_terms_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `search_terms_score_index` (`score`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_index` (`user_id`),
  ADD KEY `social_accounts_driver_index` (`driver`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_name_index` (`name`),
  ADD KEY `tags_value_index` (`value`),
  ADD KEY `tags_order_index` (`order`),
  ADD KEY `tags_entity_id_entity_type_index` (`entity_id`,`entity_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`),
  ADD KEY `users_external_auth_id_index` (`external_auth_id`),
  ADD KEY `users_system_name_index` (`system_name`);

--
-- Indexes for table `user_invites`
--
ALTER TABLE `user_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_invites_user_id_index` (`user_id`),
  ADD KEY `user_invites_token_index` (`token`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_user_id_index` (`user_id`),
  ADD KEY `views_viewable_id_index` (`viewable_id`);

--
-- Indexes for table `webhooks`
--
ALTER TABLE `webhooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webhooks_name_index` (`name`),
  ADD KEY `webhooks_active_index` (`active`);

--
-- Indexes for table `webhook_tracked_events`
--
ALTER TABLE `webhook_tracked_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webhook_tracked_events_event_index` (`event`),
  ADD KEY `webhook_tracked_events_webhook_id_index` (`webhook_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_tokens`
--
ALTER TABLE `api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookshelves`
--
ALTER TABLE `bookshelves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deletions`
--
ALTER TABLE `deletions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_confirmations`
--
ALTER TABLE `email_confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_permissions`
--
ALTER TABLE `entity_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mfa_values`
--
ALTER TABLE `mfa_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_revisions`
--
ALTER TABLE `page_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_invites`
--
ALTER TABLE `user_invites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhooks`
--
ALTER TABLE `webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_tracked_events`
--
ALTER TABLE `webhook_tracked_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookshelves_books`
--
ALTER TABLE `bookshelves_books`
  ADD CONSTRAINT `bookshelves_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookshelves_books_bookshelf_id_foreign` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
