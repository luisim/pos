-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 02:07 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ospos`
--

-- --------------------------------------------------------

--
-- Table structure for table `mesas`
--

CREATE TABLE `mesas` (
  `id` int(100) NOT NULL,
  `name` varchar(15) NOT NULL,
  `active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

CREATE TABLE `ospos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', '123 calle poniente'),
('allow_duplicate_barcodes', '0'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', '0'),
('barcode_font_size', '10'),
('barcode_formats', 'null'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_second_row', 'name'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('cash_decimals', '2'),
('cash_rounding_code', '1'),
('company', 'AllOver'),
('company_logo', ''),
('country_codes', 'us'),
('currency_decimals', '2'),
('currency_symbol', '$'),
('custom10_name', ''),
('custom1_name', ''),
('custom2_name', ''),
('custom3_name', ''),
('custom4_name', ''),
('custom5_name', ''),
('custom6_name', ''),
('custom7_name', ''),
('custom8_name', ''),
('custom9_name', ''),
('customer_reward_enable', '0'),
('customer_sales_tax_support', '0'),
('dateformat', 'd/m/Y'),
('date_or_time_format', ''),
('default_origin_tax_code', ''),
('default_register_mode', 'sale'),
('default_sales_discount', '0'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('default_tax_category', 'Standard'),
('default_tax_rate', '8'),
('derive_sale_quantity', '0'),
('dinner_table_enable', '1'),
('email', 'ejemplo@ej.com'),
('email_receipt_check_behaviour', 'last'),
('enforce_privacy', ''),
('fax', ''),
('financial_year', '1'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('giftcard_number', 'series'),
('invoice_default_comments', 'Gracias por visitarnos!'),
('invoice_email_message', ''),
('invoice_enable', '1'),
('language', 'spanish'),
('language_code', 'es'),
('last_used_invoice_number', '0'),
('last_used_quote_number', '0'),
('last_used_work_order_number', '0'),
('lines_per_page', '25'),
('line_sequence', '0'),
('mailpath', '/usr/sbin/sendmail'),
('msg_msg', ''),
('msg_pwd', ''),
('msg_src', ''),
('msg_uid', ''),
('notify_horizontal_position', 'center'),
('notify_vertical_position', 'top'),
('number_locale', 'en_US'),
('payment_options_order', 'cashdebitcredit'),
('phone', '12345658'),
('print_bottom_margin', ''),
('print_delay_autoreturn', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', ''),
('print_receipt_check_behaviour', 'last'),
('print_right_margin', ''),
('print_silently', '0'),
('print_top_margin', ''),
('protocol', 'mail'),
('quantity_decimals', '0'),
('quote_default_comments', ''),
('receipt_font_size', '12'),
('receipt_show_company_name', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('receipt_show_taxes', '0'),
('receipt_show_total_discount', '1'),
('receipt_template', 'receipt_default'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '{CO}'),
('return_policy', 'No se hacen devoluciones'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('smtp_crypto', 'ssl'),
('smtp_host', ''),
('smtp_pass', ''),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_user', ''),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('tax_decimals', '2'),
('tax_included', '0'),
('theme', 'flatly'),
('thousands_separator', 'thousands_separator'),
('timeformat', 'H:i:s'),
('timezone', 'America/New_York'),
('website', ''),
('work_order_enable', '0'),
('work_order_format', 'W%y{WSEQ:6}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

CREATE TABLE `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT '1',
  `sales_tax_code` varchar(32) NOT NULL DEFAULT '1',
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `package_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_id` int(10) NOT NULL,
  `consent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `sales_tax_code`, `discount_percent`, `package_id`, `points`, `deleted`, `date`, `employee_id`, `consent`) VALUES
(2, NULL, NULL, 1, '', '5.00', NULL, NULL, 0, '2019-06-05 04:32:27', 1, 1),
(5, NULL, NULL, 1, '', '15.00', NULL, NULL, 0, '2019-06-10 12:14:30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_packages`
--

CREATE TABLE `ospos_customers_packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers_packages`
--

INSERT INTO `ospos_customers_packages` (`package_id`, `package_name`, `points_percent`, `deleted`) VALUES
(1, 'Default', 0, 0),
(2, 'Bronze', 10, 0),
(3, 'Silver', 20, 0),
(4, 'Gold', 30, 0),
(5, 'Premium', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_points`
--

CREATE TABLE `ospos_customers_points` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_dinner_tables`
--

CREATE TABLE `ospos_dinner_tables` (
  `dinner_table_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_dinner_tables`
--

INSERT INTO `ospos_dinner_tables` (`dinner_table_id`, `name`, `status`, `deleted`) VALUES
(1, 'Mesa1', 0, 0),
(2, 'Mesa2', 0, 0),
(3, 'Mesa3', 1, 0),
(4, 'Mesa4', 0, 0),
(5, 'Mesa5', 0, 0),
(6, 'Mesa6', 0, 0),
(7, 'Mesa7', 1, 0),
(8, 'Mesa8', 0, 0),
(9, 'Mesa9', 0, 0),
(10, 'Mesa10', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

CREATE TABLE `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `hash_version` int(1) NOT NULL DEFAULT '2',
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`, `hash_version`, `language`, `language_code`) VALUES
('admin', '$2y$10$ttXNZqhQLBaJ6laKXG87pexRt27hNOr/4CpnzcC9ihhSyWb12zje6', 1, 0, 2, '', ''),
('regina', '$2y$10$S47FTw0rh.L4YJ8/spxtnOfWI40INV70tyxdqabdn3JdK62.Btyoe', 4, 0, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expenses`
--

CREATE TABLE `ospos_expenses` (
  `expense_id` int(10) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `supplier_name` varchar(255) DEFAULT NULL,
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_expenses`
--

INSERT INTO `ospos_expenses` (`expense_id`, `date`, `amount`, `payment_type`, `expense_category_id`, `description`, `employee_id`, `deleted`, `supplier_name`, `supplier_tax_code`, `tax_amount`) VALUES
(1, '2019-06-06 06:43:34', '65.00', 'Efectivo', 1, 'pilsener', 1, 0, 'luis escobar', '10701', '0.00'),
(2, '2019-06-10 12:21:26', '8.00', 'Efectivo', 2, '', 1, 0, '', '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expense_categories`
--

CREATE TABLE `ospos_expense_categories` (
  `expense_category_id` int(10) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_expense_categories`
--

INSERT INTO `ospos_expense_categories` (`expense_category_id`, `category_name`, `category_description`, `deleted`) VALUES
(1, 'BEBIDAS', '', 0),
(2, 'COMIDAS', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

CREATE TABLE `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giftcard_id` int(11) NOT NULL,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `person_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_giftcards`
--

INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
('2019-06-05 05:38:45', 1, '1', '-1.17', 0, 2),
('2019-06-06 06:42:07', 2, '2', '0.00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_grants`
--

CREATE TABLE `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`, `menu_group`) VALUES
('config', 1, 'office'),
('config', 4, 'both'),
('customers', 1, 'home'),
('customers', 4, 'home'),
('employees', 1, 'office'),
('employees', 4, 'home'),
('expenses', 1, 'home'),
('expenses', 4, 'home'),
('expenses_categories', 1, 'home'),
('expenses_categories', 4, 'both'),
('giftcards', 1, 'home'),
('home', 1, 'office'),
('home', 4, 'home'),
('items', 1, 'home'),
('items', 4, 'home'),
('items_stock', 1, '--'),
('items_stock', 4, '--'),
('item_kits', 1, 'home'),
('item_kits', 4, 'home'),
('office', 1, 'home'),
('receivings', 1, 'home'),
('receivings', 4, 'home'),
('receivings_stock', 1, '--'),
('receivings_stock', 4, '--'),
('reports', 1, 'home'),
('reports_categories', 1, '--'),
('reports_customers', 1, '--'),
('reports_discounts', 1, '--'),
('reports_employees', 1, '--'),
('reports_expenses_categories', 1, '--'),
('reports_inventory', 1, '--'),
('reports_items', 1, '--'),
('reports_payments', 1, '--'),
('reports_receivings', 1, '--'),
('reports_sales', 1, '--'),
('reports_suppliers', 1, '--'),
('reports_taxes', 1, '--'),
('sales', 1, 'home'),
('sales', 4, 'home'),
('sales_delete', 1, '--'),
('sales_stock', 1, '--'),
('sales_stock', 4, '--'),
('suppliers', 1, 'home'),
('suppliers', 4, 'home'),
('taxes', 1, 'office'),
('taxes', 4, 'home');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

CREATE TABLE `ospos_inventory` (
  `trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT '0',
  `trans_user` int(11) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 1, '2019-06-05 05:08:46', 'Edición Manual de Cantidad', 1, '0.000'),
(2, 2, 1, '2019-06-05 05:10:00', 'Edición Manual de Cantidad', 1, '0.000'),
(3, 2, 1, '2019-06-05 05:11:00', '', 1, '100.000'),
(4, 2, 1, '2019-06-05 05:13:44', 'POS 1', 1, '-5.000'),
(5, 2, 1, '2019-06-05 05:14:36', 'POS 2', 1, '-30.000'),
(6, 2, 1, '2019-06-05 05:15:45', 'POS 3', 1, '-1.000'),
(7, 2, 1, '2019-06-06 06:38:23', '', 1, '50.000'),
(8, 2, 1, '2019-06-06 06:41:16', 'POS 5', 1, '-25.000'),
(9, 2, 1, '2019-06-06 06:43:09', 'POS 6', 1, '-100.000'),
(10, 3, 1, '2019-06-07 01:34:56', 'Edición Manual de Cantidad', 1, '0.000'),
(11, 4, 1, '2019-06-07 01:35:41', 'Edición Manual de Cantidad', 1, '0.000'),
(12, 2, 1, '2019-06-07 01:36:47', '', 1, '150.000'),
(13, 3, 1, '2019-06-07 01:37:01', '', 1, '120.000'),
(14, 4, 1, '2019-06-07 01:37:07', '', 1, '100.000'),
(15, 3, 1, '2019-06-07 13:48:10', 'POS 8', 1, '-12.000'),
(16, 2, 1, '2019-06-07 13:49:09', 'POS 9', 1, '-1.000'),
(17, 2, 1, '2019-06-07 13:51:26', 'POS 10', 1, '-1.000'),
(18, 2, 1, '2019-06-07 15:17:38', 'POS 11', 1, '-8.000'),
(19, 2, 1, '2019-06-07 15:18:41', 'POS 12', 1, '-2.000'),
(20, 2, 1, '2019-06-08 04:12:37', 'POS 13', 1, '-1.000'),
(21, 2, 1, '2019-06-08 04:17:01', '', 1, '50.000'),
(22, 5, 1, '2019-06-08 04:20:17', 'Edición Manual de Cantidad', 1, '0.000'),
(23, 5, 1, '2019-06-08 04:20:24', '', 1, '50.000'),
(24, 5, 1, '2019-06-08 04:20:42', 'POS 19', 1, '-25.000'),
(25, 2, 1, '2019-06-10 06:37:01', 'POS 20', 1, '-12.000'),
(26, 2, 1, '2019-06-10 06:43:11', 'POS 21', 1, '1.000'),
(27, 2, 1, '2019-06-10 06:54:46', '', 1, '12.000'),
(28, 2, 1, '2019-06-10 12:16:34', '', 1, '23.000'),
(29, 2, 1, '2019-06-10 12:25:21', 'POS 22', 1, '-12.000'),
(30, 2, 1, '2019-06-10 12:25:59', 'POS 23', 1, '-5.000'),
(31, 2, 1, '2019-06-11 02:28:03', 'POS 7', 1, '-3.000'),
(32, 3, 1, '2019-06-11 02:28:03', 'POS 7', 1, '-2.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

CREATE TABLE `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT '0.000',
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  `item_id` int(10) NOT NULL,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `stock_type` tinyint(2) NOT NULL DEFAULT '0',
  `item_type` tinyint(2) NOT NULL DEFAULT '0',
  `tax_category_id` int(10) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `custom1` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `custom3` varchar(255) DEFAULT NULL,
  `custom4` varchar(255) DEFAULT NULL,
  `custom5` varchar(255) DEFAULT NULL,
  `custom6` varchar(255) DEFAULT NULL,
  `custom7` varchar(255) DEFAULT NULL,
  `custom8` varchar(255) DEFAULT NULL,
  `custom9` varchar(255) DEFAULT NULL,
  `custom10` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_filename`, `allow_alt_description`, `is_serialized`, `stock_type`, `item_type`, `tax_category_id`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
('PILSENER', 'BEBIDAS', 3, NULL, 'PILSENER DE VIDRIO', '0.45', '1.00', '1.000', '100.000', 1, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('PILSENER', 'BEBIDAS', 3, NULL, 'PILSENER VIDRIO', '0.50', '1.00', '1.000', '100.000', 2, 'descarga.jpg', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('SUPREMA', 'BEBIDAS', 3, NULL, '', '0.75', '1.50', '1.000', '100.000', 3, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('REGIA', 'BEBIDAS', 3, NULL, '', '0.60', '2.20', '1.000', '100.000', 4, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Alitas', 'COMIDAS', NULL, NULL, '', '2.00', '4.00', '1.000', '1.000', 5, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

CREATE TABLE `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items_taxes`
--

INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
(1, 'IVA', '13.000'),
(1, 'PROPINA', '10.000'),
(2, 'IVA', '13.000'),
(2, 'PROPINA', '10.000'),
(3, 'IVA', '13.000'),
(4, 'IVA', '13.000'),
(5, 'IVA', '13.000'),
(5, 'PROPINA', '10.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

CREATE TABLE `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item_id` int(10) NOT NULL DEFAULT '0',
  `kit_discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `price_option` tinyint(2) NOT NULL DEFAULT '0',
  `print_option` tinyint(2) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

CREATE TABLE `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_quantities`
--

CREATE TABLE `ospos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_quantities`
--

INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, '0.000'),
(2, 1, '180.000'),
(3, 1, '106.000'),
(4, 1, '100.000'),
(5, 1, '25.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_migrations`
--

CREATE TABLE `ospos_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_migrations`
--

INSERT INTO `ospos_migrations` (`version`) VALUES
(20180501100000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

CREATE TABLE `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_config', 'module_config_desc', 110, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_expenses', 'module_expenses_desc', 108, 'expenses'),
('module_expenses_categories', 'module_expenses_categories_desc', 109, 'expenses_categories'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 999, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

CREATE TABLE `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('Luis', 'Escobar', 1, '555-555-5555', 'luis@ejemplo.com', 'Address 1', '', '', '', '', '', '', 1),
('Luis', 'Escobar', 1, '1234568', 'ejemplo@ej.com', '', '', '', '', '', '', '', 2),
('Constancia', 'Sa de Cv', NULL, '', '', '', '', '', '', '', '', '', 3),
('Regina', 'Escobar', 0, '', '', '', '', '', '', '', '', '', 4),
('Walter', 'Fuentes', 1, '123456', 'walter@ej.com', '', '', '', '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

CREATE TABLE `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('expenses', 'expenses', NULL),
('expenses_categories', 'expenses_categories', NULL),
('giftcards', 'giftcards', NULL),
('home', 'home', NULL),
('items', 'items', NULL),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('messages', 'messages', NULL),
('office', 'office', NULL),
('receivings', 'receivings', NULL),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_expenses_categories', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_delete', 'sales', NULL),
('sales_stock', 'sales', 1),
('suppliers', 'suppliers', NULL),
('taxes', 'taxes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

CREATE TABLE `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text,
  `receiving_id` int(10) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

CREATE TABLE `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

CREATE TABLE `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text,
  `invoice_number` varchar(32) DEFAULT NULL,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL,
  `sale_status` tinyint(2) NOT NULL DEFAULT '0',
  `dinner_table_id` int(11) DEFAULT NULL,
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `invoice_number`, `quote_number`, `sale_id`, `sale_status`, `dinner_table_id`, `work_order_number`, `sale_type`) VALUES
('2019-06-05 05:13:44', 2, 1, '', NULL, NULL, 1, 0, NULL, NULL, 0),
('2019-06-05 05:14:36', NULL, 1, '', '0', NULL, 2, 0, NULL, NULL, 1),
('2019-06-05 05:15:45', NULL, 1, '', '1', NULL, 3, 0, NULL, NULL, 1),
('2019-06-05 05:41:30', 2, 1, '', NULL, NULL, 4, 2, 1, NULL, 0),
('2019-06-06 06:41:16', 2, 1, '', NULL, NULL, 5, 0, 1, NULL, 0),
('2019-06-06 06:43:09', NULL, 1, '', NULL, NULL, 6, 0, 1, NULL, 0),
('2019-06-11 02:28:03', NULL, 1, '', NULL, NULL, 7, 0, 1, NULL, 0),
('2019-06-07 13:48:10', NULL, 1, '', NULL, NULL, 8, 0, 3, NULL, 0),
('2019-06-07 13:49:08', NULL, 1, '', NULL, NULL, 9, 0, 1, NULL, 0),
('2019-06-07 13:51:26', NULL, 1, '', NULL, NULL, 10, 0, 1, NULL, 0),
('2019-06-07 15:17:38', NULL, 1, '', NULL, NULL, 11, 0, 1, NULL, 0),
('2019-06-07 15:18:41', NULL, 1, '', NULL, NULL, 12, 0, 1, NULL, 0),
('2019-06-08 04:12:37', NULL, 1, '', NULL, NULL, 13, 0, 5, NULL, 0),
('2019-06-08 04:15:59', NULL, 1, '', NULL, NULL, 14, 1, 3, NULL, 0),
('2019-06-08 04:15:32', NULL, 1, '', NULL, NULL, 15, 1, 7, NULL, 0),
('2019-06-08 04:16:15', NULL, 1, '', NULL, NULL, 16, 1, 2, NULL, 0),
('2019-06-08 04:17:47', 2, 1, '', NULL, NULL, 17, 1, 1, NULL, 0),
('2019-06-08 04:18:14', NULL, 1, '', NULL, NULL, 18, 1, 1, NULL, 0),
('2019-06-08 04:20:41', NULL, 1, '', NULL, NULL, 19, 0, 1, NULL, 0),
('2019-06-10 06:37:00', NULL, 1, '', NULL, NULL, 20, 0, 2, NULL, 0),
('2019-06-10 06:43:11', NULL, 1, '', NULL, NULL, 21, 0, 2, NULL, 4),
('2019-06-10 12:25:21', 5, 1, '', NULL, NULL, 22, 0, 6, NULL, 0),
('2019-06-10 12:25:59', NULL, 1, '', NULL, NULL, 23, 0, 1, NULL, 0),
('2019-06-10 12:26:38', NULL, 1, '', NULL, NULL, 24, 1, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

CREATE TABLE `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL,
  `print_option` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `print_option`) VALUES
(1, 2, 'PILSENER VIDRIO', '', 1, '5.000', '0.50', '0.95', '5.00', 1, 0),
(2, 2, 'PILSENER VIDRIO', '', 1, '30.000', '0.50', '1.00', '0.00', 1, 0),
(3, 2, 'PILSENER VIDRIO', '', 1, '1.000', '0.50', '1.00', '0.00', 1, 0),
(4, 2, 'PILSENER VIDRIO', '', 1, '15.000', '0.50', '1.00', '5.00', 1, 0),
(5, 2, 'PILSENER VIDRIO', '', 1, '25.000', '0.50', '1.00', '5.00', 1, 0),
(6, 2, 'PILSENER VIDRIO', '', 1, '100.000', '0.50', '1.00', '0.00', 1, 0),
(7, 2, 'PILSENER VIDRIO', '', 1, '3.000', '0.50', '1.00', '0.00', 1, 0),
(7, 3, '', '', 2, '2.000', '0.75', '1.50', '0.00', 1, 0),
(8, 3, '', '', 1, '12.000', '0.75', '1.50', '0.00', 1, 0),
(9, 2, 'PILSENER VIDRIO', '', 1, '1.000', '0.50', '1.00', '0.00', 1, 0),
(10, 2, 'PILSENER VIDRIO', '', 1, '1.000', '0.50', '1.00', '0.00', 1, 0),
(11, 2, 'PILSENER VIDRIO', '', 1, '8.000', '0.50', '1.00', '0.00', 1, 0),
(12, 2, 'PILSENER VIDRIO', '', 1, '2.000', '0.50', '1.00', '0.00', 1, 0),
(13, 2, 'PILSENER VIDRIO', '', 1, '1.000', '0.50', '1.00', '0.00', 1, 0),
(14, 2, 'PILSENER VIDRIO', '', 1, '1.000', '0.50', '1.00', '0.00', 1, 0),
(15, 3, '', '', 1, '1.000', '0.75', '1.50', '0.00', 1, 0),
(16, 2, 'PILSENER VIDRIO', '', 1, '1.000', '0.50', '1.00', '0.00', 1, 0),
(17, 3, '', '', 1, '15.000', '0.75', '1.50', '5.00', 1, 0),
(18, 2, 'PILSENER VIDRIO', '', 1, '1.000', '0.50', '1.00', '0.00', 1, 0),
(19, 5, '', '', 1, '25.000', '2.00', '4.00', '0.00', 1, 0),
(20, 2, 'PILSENER VIDRIO', '', 1, '12.000', '0.50', '1.00', '0.00', 1, 0),
(21, 2, 'PILSENER VIDRIO', '', 1, '-1.000', '0.50', '1.00', '0.00', 1, 0),
(22, 2, 'PILSENER VIDRIO', '', 1, '12.000', '0.50', '1.00', '15.00', 1, 0),
(23, 2, 'PILSENER VIDRIO', '', 1, '5.000', '0.50', '1.00', '0.00', 1, 0),
(24, 2, 'PILSENER VIDRIO', '', 1, '6.000', '0.50', '1.00', '0.00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

CREATE TABLE `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_type` tinyint(2) NOT NULL DEFAULT '0',
  `rounding_code` tinyint(2) NOT NULL DEFAULT '0',
  `cascade_tax` tinyint(2) NOT NULL DEFAULT '0',
  `cascade_sequence` tinyint(2) NOT NULL DEFAULT '0',
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items_taxes`
--

INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`, `tax_type`, `rounding_code`, `cascade_tax`, `cascade_sequence`, `item_tax_amount`) VALUES
(1, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.5900'),
(1, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.4500'),
(2, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '3.9000'),
(2, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '3.0000'),
(3, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.1300'),
(3, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.1000'),
(4, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '1.8500'),
(4, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '1.4300'),
(5, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '3.0900'),
(5, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '2.3800'),
(6, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '13.0000'),
(6, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '10.0000'),
(7, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.3900'),
(7, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.3000'),
(7, 3, 2, 'IVA', '13.0000', 1, 1, 0, 0, '0.3900'),
(8, 3, 1, 'IVA', '13.0000', 1, 1, 0, 0, '2.3400'),
(9, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.1300'),
(9, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.1000'),
(10, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.1300'),
(10, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.1000'),
(11, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '1.0400'),
(11, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.8000'),
(12, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.2600'),
(12, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.2000'),
(13, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.1300'),
(13, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.1000'),
(14, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.1300'),
(14, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.1000'),
(15, 3, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.2000'),
(16, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.1300'),
(16, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.1000'),
(17, 3, 1, 'IVA', '13.0000', 1, 1, 0, 0, '2.7800'),
(18, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.1300'),
(18, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.1000'),
(19, 5, 1, 'IVA', '13.0000', 1, 1, 0, 0, '13.0000'),
(19, 5, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '10.0000'),
(20, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '1.5600'),
(20, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '1.2000'),
(21, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '-0.1300'),
(21, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '-0.1000'),
(22, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '1.3300'),
(22, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '1.0200'),
(23, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.6500'),
(23, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.5000'),
(24, 2, 1, 'IVA', '13.0000', 1, 1, 0, 0, '0.7800'),
(24, 2, 1, 'PROPINA', '10.0000', 1, 1, 0, 0, '0.6000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

CREATE TABLE `ospos_sales_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_amount`) VALUES
(1, 'Efectivo', '5.55'),
(2, 'Efectivo', '36.90'),
(3, 'Efectivo', '1.23'),
(4, 'Efectivo', '6.36'),
(4, 'Tarjeta de Regalo:1', '11.17'),
(5, 'Efectivo', '14.22'),
(5, 'Tarjeta de Débito', '15.00'),
(6, 'Efectivo', '73.00'),
(6, 'Tarjeta de Regalo:2', '50.00'),
(7, 'Efectivo', '7.08'),
(8, 'Efectivo', '20.34'),
(9, 'Efectivo', '1.23'),
(10, 'Efectivo', '1.23'),
(11, 'Efectivo', '9.84'),
(12, 'Efectivo', '1.23'),
(13, 'Efectivo', '1.23'),
(19, 'Efectivo', '123.00'),
(20, 'Efectivo', '10.00'),
(20, 'Tarjeta de Crédito', '4.76'),
(21, 'Efectivo', '-1.23'),
(22, 'Efectivo', '5.00'),
(22, 'Tarjeta de Crédito', '7.55'),
(23, 'Efectivo', '20.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_reward_points`
--

CREATE TABLE `ospos_sales_reward_points` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_taxes`
--

CREATE TABLE `ospos_sales_taxes` (
  `sale_id` int(10) NOT NULL,
  `tax_type` smallint(2) NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(2) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code` varchar(32) NOT NULL DEFAULT '',
  `rounding_code` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_taxes`
--

INSERT INTO `ospos_sales_taxes` (`sale_id`, `tax_type`, `tax_group`, `sale_tax_basis`, `sale_tax_amount`, `print_sequence`, `name`, `tax_rate`, `sales_tax_code`, `rounding_code`) VALUES
(1, 1, '10% PROPINA', '4.5100', '0.4500', 1, 'PROPINA', '10.0000', '', 1),
(1, 1, '13% IVA', '4.5100', '0.5900', 0, 'IVA', '13.0000', '', 1),
(2, 1, '10% PROPINA', '30.0000', '3.0000', 1, 'PROPINA', '10.0000', '', 1),
(2, 1, '13% IVA', '30.0000', '3.9000', 0, 'IVA', '13.0000', '', 1),
(3, 1, '10% PROPINA', '1.0000', '0.1000', 1, 'PROPINA', '10.0000', '', 1),
(3, 1, '13% IVA', '1.0000', '0.1300', 0, 'IVA', '13.0000', '', 1),
(4, 1, '10% PROPINA', '14.2500', '1.4300', 1, 'PROPINA', '10.0000', '', 1),
(4, 1, '13% IVA', '14.2500', '1.8500', 0, 'IVA', '13.0000', '', 1),
(5, 1, '10% PROPINA', '23.7500', '2.3800', 1, 'PROPINA', '10.0000', '', 1),
(5, 1, '13% IVA', '23.7500', '3.0900', 0, 'IVA', '13.0000', '', 1),
(6, 1, '10% PROPINA', '100.0000', '10.0000', 1, 'PROPINA', '10.0000', '', 1),
(6, 1, '13% IVA', '100.0000', '13.0000', 0, 'IVA', '13.0000', '', 1),
(7, 1, '10% PROPINA', '3.0000', '0.3000', 1, 'PROPINA', '10.0000', '', 1),
(7, 1, '13% IVA', '6.0000', '0.7800', 0, 'IVA', '13.0000', '', 1),
(8, 1, '13% IVA', '18.0000', '2.3400', 0, 'IVA', '13.0000', '', 1),
(9, 1, '10% PROPINA', '1.0000', '0.1000', 1, 'PROPINA', '10.0000', '', 1),
(9, 1, '13% IVA', '1.0000', '0.1300', 0, 'IVA', '13.0000', '', 1),
(10, 1, '10% PROPINA', '1.0000', '0.1000', 1, 'PROPINA', '10.0000', '', 1),
(10, 1, '13% IVA', '1.0000', '0.1300', 0, 'IVA', '13.0000', '', 1),
(11, 1, '10% PROPINA', '8.0000', '0.8000', 1, 'PROPINA', '10.0000', '', 1),
(11, 1, '13% IVA', '8.0000', '1.0400', 0, 'IVA', '13.0000', '', 1),
(12, 1, '10% PROPINA', '2.0000', '0.2000', 1, 'PROPINA', '10.0000', '', 1),
(12, 1, '13% IVA', '2.0000', '0.2600', 0, 'IVA', '13.0000', '', 1),
(13, 1, '10% PROPINA', '1.0000', '0.1000', 1, 'PROPINA', '10.0000', '', 1),
(13, 1, '13% IVA', '1.0000', '0.1300', 0, 'IVA', '13.0000', '', 1),
(14, 1, '10% PROPINA', '1.0000', '0.1000', 1, 'PROPINA', '10.0000', '', 1),
(14, 1, '13% IVA', '1.0000', '0.1300', 0, 'IVA', '13.0000', '', 1),
(15, 1, '13% IVA', '1.5000', '0.2000', 0, 'IVA', '13.0000', '', 1),
(16, 1, '10% PROPINA', '1.0000', '0.1000', 1, 'PROPINA', '10.0000', '', 1),
(16, 1, '13% IVA', '1.0000', '0.1300', 0, 'IVA', '13.0000', '', 1),
(17, 1, '13% IVA', '21.3700', '2.7800', 0, 'IVA', '13.0000', '', 1),
(18, 1, '10% PROPINA', '1.0000', '0.1000', 1, 'PROPINA', '10.0000', '', 1),
(18, 1, '13% IVA', '1.0000', '0.1300', 0, 'IVA', '13.0000', '', 1),
(19, 1, '10% PROPINA', '100.0000', '10.0000', 1, 'PROPINA', '10.0000', '', 1),
(19, 1, '13% IVA', '100.0000', '13.0000', 0, 'IVA', '13.0000', '', 1),
(20, 1, '10% PROPINA', '12.0000', '1.2000', 1, 'PROPINA', '10.0000', '', 1),
(20, 1, '13% IVA', '12.0000', '1.5600', 0, 'IVA', '13.0000', '', 1),
(21, 1, '10% PROPINA', '-1.0000', '-0.1000', 1, 'PROPINA', '10.0000', '', 1),
(21, 1, '13% IVA', '-1.0000', '-0.1300', 0, 'IVA', '13.0000', '', 1),
(22, 1, '10% PROPINA', '10.2000', '1.0200', 1, 'PROPINA', '10.0000', '', 1),
(22, 1, '13% IVA', '10.2000', '1.3300', 0, 'IVA', '13.0000', '', 1),
(23, 1, '10% PROPINA', '5.0000', '0.5000', 1, 'PROPINA', '10.0000', '', 1),
(23, 1, '13% IVA', '5.0000', '0.6500', 0, 'IVA', '13.0000', '', 1),
(24, 1, '10% PROPINA', '6.0000', '0.6000', 1, 'PROPINA', '10.0000', '', 1),
(24, 1, '13% IVA', '6.0000', '0.7800', 0, 'IVA', '13.0000', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

CREATE TABLE `ospos_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('fc89809e76qctsoovespa0sq3qeg5gr8', '::1', 1560158343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303135383034303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('cjekv4g4ghlqd3e9gvllngpkt2p431ru', '::1', 1560158686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303135383337393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b64696e6e65725f7461626c657c733a313a2236223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c655f747970657c693a303b),
('v5sb633ieg8gvv6p31rjh4d03g1ouf3d', '::1', 1560158976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303135383638363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c733a323a223138223b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a383a2250494c53454e4552223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a31353a2250494c53454e45522056494452494f223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b733a353a22312e303030223b733a383a22646973636f756e74223b733a343a22302e3030223b733a383a22696e5f73746f636b223b733a373a223138332e303030223b733a353a227072696365223b733a343a22312e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3530223b733a353a22746f74616c223b733a363a22312e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22312e30303030223b733a31323a227072696e745f6f7074696f6e223b733a313a2230223b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f71756f74655f6e756d6265727c4e3b73616c65735f776f726b5f6f726465725f6e756d6265727c4e3b73616c655f747970657c733a313a2230223b73616c65735f636f6d6d656e747c733a303a22223b64696e6e65725f7461626c657c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('oo587enbdevsv29g2o05s162schos898', '::1', 1560159130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303135393133303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c733a323a223138223b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a383a2250494c53454e4552223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a31353a2250494c53454e45522056494452494f223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b733a353a22312e303030223b733a383a22646973636f756e74223b733a343a22302e3030223b733a383a22696e5f73746f636b223b733a373a223138332e303030223b733a353a227072696365223b733a343a22312e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3530223b733a353a22746f74616c223b733a363a22312e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22312e30303030223b733a31323a227072696e745f6f7074696f6e223b733a313a2230223b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f71756f74655f6e756d6265727c4e3b73616c65735f776f726b5f6f726465725f6e756d6265727c4e3b73616c655f747970657c733a313a2230223b73616c65735f636f6d6d656e747c733a303a22223b64696e6e65725f7461626c657c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('3cb6rj7047c93aaguj75ocjrfo4fb31h', '::1', 1560159770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303135393736393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c733a323a223138223b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a383a2250494c53454e4552223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a31353a2250494c53454e45522056494452494f223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b733a353a22312e303030223b733a383a22646973636f756e74223b733a343a22302e3030223b733a383a22696e5f73746f636b223b733a373a223138332e303030223b733a353a227072696365223b733a343a22312e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3530223b733a353a22746f74616c223b733a363a22312e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22312e30303030223b733a31323a227072696e745f6f7074696f6e223b733a313a2230223b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f71756f74655f6e756d6265727c4e3b73616c65735f776f726b5f6f726465725f6e756d6265727c4e3b73616c655f747970657c733a313a2230223b73616c65735f636f6d6d656e747c733a303a22223b64696e6e65725f7461626c657c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('pcv1t94ghqm9ietic9cc19oit3g1eli1', '::1', 1560159770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303135393737303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c733a323a223138223b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a383a2250494c53454e4552223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a31353a2250494c53454e45522056494452494f223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b733a353a22312e303030223b733a383a22646973636f756e74223b733a343a22302e3030223b733a383a22696e5f73746f636b223b733a373a223138332e303030223b733a353a227072696365223b733a343a22312e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3530223b733a353a22746f74616c223b733a363a22312e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22312e30303030223b733a31323a227072696e745f6f7074696f6e223b733a313a2230223b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f71756f74655f6e756d6265727c4e3b73616c65735f776f726b5f6f726465725f6e756d6265727c4e3b73616c655f747970657c733a313a2230223b73616c65735f636f6d6d656e747c733a303a22223b64696e6e65725f7461626c657c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('f2jq303c5s9la1qcq8s21tippi4ra97a', '::1', 1560160399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303136303339393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c733a323a223138223b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2232223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a383a2250494c53454e4552223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a31353a2250494c53454e45522056494452494f223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b733a353a22312e303030223b733a383a22646973636f756e74223b733a343a22302e3030223b733a383a22696e5f73746f636b223b733a373a223138332e303030223b733a353a227072696365223b733a343a22312e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3530223b733a353a22746f74616c223b733a363a22312e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22312e30303030223b733a31323a227072696e745f6f7074696f6e223b733a313a2230223b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f71756f74655f6e756d6265727c4e3b73616c65735f776f726b5f6f726465725f6e756d6265727c4e3b73616c655f747970657c733a313a2230223b73616c65735f636f6d6d656e747c733a303a22223b64696e6e65725f7461626c657c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('cd925togvu3d92po2ivdi935m7g9stnu', '192.168.0.19', 1560160762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303136303634313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('n25qi83fisda4f2krpqk9h9mrcpfcerq', '192.168.0.6', 1560161736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303136313732343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('ierc1u1vv7fl3tgc10jikkfn4bk2speh', '::1', 1560208292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303230383232323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('0scm4r9pqspsg4icci2ja167spjn8sa6', '::1', 1560208825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303230383539393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('ovoknu84q310osnmas433hb6fnle419v', '::1', 1560209287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303230393037313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f776f726b5f6f726465725f6e756d6265727c4e3b73616c65735f7072696e745f61667465725f73616c657c733a343a2274727565223b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('tt3tu4nk1picr5ltegj75u49a1rjtdpe', '::1', 1560209441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303230393432333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f776f726b5f6f726465725f6e756d6265727c4e3b73616c65735f7072696e745f61667465725f73616c657c733a343a2274727565223b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2233223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a373a2253555052454d41223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a383a22696e5f73746f636b223b733a373a223130362e303030223b733a353a227072696365223b733a343a22312e3530223b733a31303a22636f73745f7072696365223b733a343a22302e3735223b733a353a22746f74616c223b733a343a22312e3530223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22312e35303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_stock_locations`
--

CREATE TABLE `ospos_stock_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

CREATE TABLE `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
(3, 'CONSTANCIA', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_categories`
--

CREATE TABLE `ospos_tax_categories` (
  `tax_category_id` int(10) NOT NULL,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_tax_categories`
--

INSERT INTO `ospos_tax_categories` (`tax_category_id`, `tax_category`, `tax_group_sequence`) VALUES
(1, 'Standard', 10),
(2, 'Service', 12),
(3, 'Alcohol', 11);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_codes`
--

CREATE TABLE `ospos_tax_codes` (
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `tax_code_type` tinyint(2) NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_code_rates`
--

CREATE TABLE `ospos_tax_code_rates` (
  `rate_tax_code` varchar(32) NOT NULL,
  `rate_tax_category_id` int(10) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `rounding_code` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ospos_app_config`
--
ALTER TABLE `ospos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  ADD PRIMARY KEY (`dinner_table_id`);

--
-- Indexes for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `expense_category_id` (`expense_category_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  ADD PRIMARY KEY (`expense_category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD PRIMARY KEY (`permission_id`,`person_id`),
  ADD KEY `ospos_grants_ibfk_2` (`person_id`);

--
-- Indexes for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_items` (`trans_items`),
  ADD KEY `trans_user` (`trans_user`),
  ADD KEY `trans_location` (`trans_location`);

--
-- Indexes for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Indexes for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`);

--
-- Indexes for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  ADD KEY `ospos_item_kit_items_ibfk_2` (`item_id`);

--
-- Indexes for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ospos_modules`
--
ALTER TABLE `ospos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indexes for table `ospos_people`
--
ALTER TABLE `ospos_people`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `ospos_permissions_ibfk_2` (`location_id`);

--
-- Indexes for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `reference` (`reference`);

--
-- Indexes for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `sale_time` (`sale_time`),
  ADD KEY `dinner_table_id` (`dinner_table_id`);

--
-- Indexes for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_location` (`item_location`);

--
-- Indexes for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD PRIMARY KEY (`sale_id`,`payment_type`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_taxes`
--
ALTER TABLE `ospos_sales_taxes`
  ADD PRIMARY KEY (`sale_id`,`tax_type`,`tax_group`),
  ADD KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_type`,`tax_group`);

--
-- Indexes for table `ospos_sessions`
--
ALTER TABLE `ospos_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  ADD PRIMARY KEY (`tax_category_id`);

--
-- Indexes for table `ospos_tax_codes`
--
ALTER TABLE `ospos_tax_codes`
  ADD PRIMARY KEY (`tax_code`);

--
-- Indexes for table `ospos_tax_code_rates`
--
ALTER TABLE `ospos_tax_code_rates`
  ADD PRIMARY KEY (`rate_tax_code`,`rate_tax_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  MODIFY `dinner_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  MODIFY `expense_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  MODIFY `expense_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  MODIFY `giftcard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ospos_items`
--
ALTER TABLE `ospos_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  MODIFY `item_kit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_people`
--
ALTER TABLE `ospos_people`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  MODIFY `receiving_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  MODIFY `tax_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`);

--
-- Constraints for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD CONSTRAINT `ospos_customers_points_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_customers_points_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`),
  ADD CONSTRAINT `ospos_customers_points_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD CONSTRAINT `ospos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `ospos_expense_categories` (`expense_category_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD CONSTRAINT `ospos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD CONSTRAINT `ospos_grants_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ospos_permissions` (`permission_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_grants_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD CONSTRAINT `ospos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`);

--
-- Constraints for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_3` FOREIGN KEY (`dinner_table_id`) REFERENCES `ospos_dinner_tables` (`dinner_table_id`);

--
-- Constraints for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  ADD CONSTRAINT `ospos_sales_reward_points_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
