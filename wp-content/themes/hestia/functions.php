<?php
/**
 * Hestia functions and definitions
 *
 * @package Hestia
 * @since   Hestia 1.0
 */

define( 'HESTIA_VERSION', '2.5.6' );
define( 'HESTIA_VENDOR_VERSION', '1.0.2' );
define( 'HESTIA_PHP_INCLUDE', trailingslashit( get_template_directory() ) . 'inc/' );
define( 'HESTIA_CORE_DIR', HESTIA_PHP_INCLUDE . 'core/' );

if ( ! defined( 'HESTIA_DEBUG' ) ) {
	define( 'HESTIA_DEBUG', false );
}

// Load hooks
require_once( HESTIA_PHP_INCLUDE . 'hooks/hooks.php' );

// Load Helper Globally Scoped Functions
require_once( HESTIA_PHP_INCLUDE . 'helpers/sanitize-functions.php' );
require_once( HESTIA_PHP_INCLUDE . 'helpers/layout-functions.php' );

if ( class_exists( 'WooCommerce', false ) ) {
	require_once( HESTIA_PHP_INCLUDE . 'compatibility/woocommerce/functions.php' );
}

if ( function_exists( 'max_mega_menu_is_enabled' ) ) {
	require_once( HESTIA_PHP_INCLUDE . 'compatibility/max-mega-menu/functions.php' );
}

/**
 * Adds notice for PHP < 5.3.29 hosts.
 */
function hestia_no_support_5_3() {
	$message = __( 'Hey, we\'ve noticed that you\'re running an outdated version of PHP which is no longer supported. Make sure your site is fast and secure, by upgrading PHP to the latest version.', 'hestia' );

	printf( '<div class="error"><p>%1$s</p></div>', esc_html( $message ) );
}


if ( version_compare( PHP_VERSION, '5.3.29' ) < 0 ) {
	/**
	 * Add notice for PHP upgrade.
	 */
	add_filter( 'template_include', '__return_null', 99 );
	switch_theme( WP_DEFAULT_THEME );
	unset( $_GET['activated'] );
	add_action( 'admin_notices', 'hestia_no_support_5_3' );

	return;
}

/**
 * Begins execution of the theme core.
 *
 * Since everything within the plugin is registered via hooks,
 * then kicking off the plugin from this point in the file does
 * not affect the page life cycle.
 *
 * @since    1.0.0
 */
function hestia_run() {

	require_once HESTIA_CORE_DIR . 'class-hestia-autoloader.php';
	$autoloader = new Hestia_Autoloader();

	spl_autoload_register( array( $autoloader, 'loader' ) );

	new Hestia_Core();

	$vendor_file = trailingslashit( get_template_directory() ) . 'vendor/composer/autoload_files.php';
	if ( is_readable( $vendor_file ) ) {
		$files = require_once $vendor_file;
		foreach ( $files as $file ) {
			if ( is_readable( $file ) ) {
				include_once $file;
			}
		}
	}
	add_filter( 'themeisle_sdk_products', 'hestia_load_sdk' );

	if ( class_exists( 'Ti_White_Label', false ) ) {
		Ti_White_Label::instance( get_template_directory() . '/style.css' );
	}
}

/**
 * Loads products array.
 *
 * @param array $products All products.
 *
 * @return array Products array.
 */
function hestia_load_sdk( $products ) {
	$products[] = get_template_directory() . '/style.css';

	return $products;
}

require_once( HESTIA_CORE_DIR . 'class-hestia-autoloader.php' );

/**
 * The start of the app.
 *
 * @since   1.0.0
 */
hestia_run();

/**
 * Append theme name to the upgrade link
 * If the active theme is child theme of Hestia
 *
 * @param string $link - Current link.
 *
 * @return string $link - New upgrade link.
 * @package hestia
 * @since   1.1.75
 */
function hestia_upgrade_link( $link ) {

	$theme_name = wp_get_theme()->get_stylesheet();

	$hestia_child_themes = array(
		'orfeo',
		'fagri',
		'tiny-hestia',
		'christmas-hestia',
		'jinsy-magazine',
	);

	if ( $theme_name === 'hestia' ) {
		return $link;
	}

	if ( ! in_array( $theme_name, $hestia_child_themes, true ) ) {
		return $link;
	}

	$link = add_query_arg(
		array(
			'theme' => $theme_name,
		),
		$link
	);

	return $link;
}

add_filter( 'hestia_upgrade_link_from_child_theme_filter', 'hestia_upgrade_link' );

/**
 * Check if $no_seconds have passed since theme was activated.
 * Used to perform certain actions, like displaying upsells or add a new recommended action in About Hestia page.
 *
 * @param integer $no_seconds number of seconds.
 *
 * @return bool
 * @since  1.1.45
 * @access public
 */
function hestia_check_passed_time( $no_seconds ) {
	$activation_time = get_option( 'hestia_time_activated' );
	if ( ! empty( $activation_time ) ) {
		$current_time    = time();
		$time_difference = (int) $no_seconds;
		if ( $current_time >= $activation_time + $time_difference ) {
			return true;
		} else {
			return false;
		}
	}

	return true;
}

/**
 * Legacy code function.
 */
function hestia_setup_theme() {
	return;
}

add_action( 'woocommerce_cart_calculate_fees', 'bbloomer_add_checkout_fee' );
  
function bbloomer_add_checkout_fee() {
   // Edit "Fee" and "5" below to control Label and Amount
   WC()->cart->add_fee( 'Fee', 10 );
}

add_filter( 'woocommerce_checkout_fields' , 'custom_remove_woo_checkout_fields' );
 
function custom_remove_woo_checkout_fields( $fields ) {

    // remove billing fields
    unset($fields['billing']['billing_first_name']);
    unset($fields['billing']['billing_last_name']);
    unset($fields['billing']['billing_company']);
    unset($fields['billing']['billing_address_1']);
    unset($fields['billing']['billing_address_2']);
    unset($fields['billing']['billing_city']);
    unset($fields['billing']['billing_postcode']);
    unset($fields['billing']['billing_state']);
    unset($fields['billing']['billing_phone']);
   
    // remove shipping fields 
    unset($fields['shipping']['shipping_first_name']);    
    unset($fields['shipping']['shipping_last_name']);  
    unset($fields['shipping']['shipping_company']);
    unset($fields['shipping']['shipping_address_1']);
    unset($fields['shipping']['shipping_address_2']);
    unset($fields['shipping']['shipping_city']);
    unset($fields['shipping']['shipping_postcode']);
    unset($fields['shipping']['shipping_country']);
    unset($fields['shipping']['shipping_state']);
    
    // remove order comment fields
    unset($fields['order']['order_comments']);
    
    return $fields;
}

// Hook in
add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );

// Our hooked in function - $fields is passed via the filter!
function custom_override_checkout_fields( $fields ) {
     $fields['billing']['device_id'] = array(
        'label'     => __('Device Id', 'woocommerce'),
    'placeholder'   => _x('Device Id', 'Device Id', 'woocommerce'),
    'required'  => true,
    'class'     => array('form-row-wide'),
    'clear'     => true
     );

     return $fields;
}

/**
 * Display field value on the order edit page
 */
 
add_action( 'woocommerce_admin_order_data_after_shipping_address', 'my_custom_checkout_field_display_admin_order_meta', 10, 1 );

function my_custom_checkout_field_display_admin_order_meta($order){
    echo '<p><strong>'.__('Device Id').':</strong> ' . get_post_meta( $order->get_id(), 'device_id', true ) . '</p>';
}

/**
 * Update the order meta with field value
 */
add_action( 'woocommerce_checkout_update_order_meta', 'my_custom_checkout_field_update_order_meta' );

function my_custom_checkout_field_update_order_meta( $order_id ) {
    if ( ! empty( $_POST['device_id'] ) ) {
        update_post_meta( $order_id, 'device_id', sanitize_text_field( $_POST['device_id'] ) );
    }
}

function wpb_hook_javascript() {
    ?>
        <script>
		(function($) {
			$(document).ready(function() {
				const urlParams = new URLSearchParams(window.location.search);
				const device_id = urlParams.get('device_id');
				if (device_id) {
					const deviceIdBlock = document.getElementById('device_id');
					deviceIdBlock.value = device_id;
				}
			})
		//plugin code
		})(jQuery);
        </script>
    <?php
}
add_action('wp_head', 'wpb_hook_javascript');

/*
 * Change button text on Product Archives
 */
add_filter( 'woocommerce_loop_add_to_cart_link', 'misha_add_to_cart_text_1' );
 
function misha_add_to_cart_text_1( $add_to_cart_html ) {
	return str_replace( 'Add to cart', 'Buy now', $add_to_cart_html );
}
 
/*
 * Change button text on product pages
 */
add_filter( 'woocommerce_product_single_add_to_cart_text', 'misha_add_to_cart_text_2' );
 
function misha_add_to_cart_text_2( $product ){
	return 'Buy now';
}

add_filter( 'woocommerce_add_to_cart_redirect', 'misha_skip_cart_redirect_checkout' );
 
function misha_skip_cart_redirect_checkout( $url ) {
    return wc_get_checkout_url();
}

add_filter( 'wc_add_to_cart_message_html', 'misha_remove_add_to_cart_message' );
 
function misha_remove_add_to_cart_message( $message ){
	return '';
}

add_filter( 'woocommerce_add_to_cart_validation', 'bbloomer_only_one_in_cart', 99, 2 );
   
function bbloomer_only_one_in_cart( $passed, $added_product_id ) {
   wc_empty_cart();
   return $passed;
}

/**
 * Automatically add product to cart on visit
 */
add_action( 'template_redirect', 'add_product_to_cart' );
function add_product_to_cart() {
	if ( ! is_admin() ) {
		$product_id = 11; //replace with your own product id
		$found = false;
		//check if product already in cart
		if ( sizeof( WC()->cart->get_cart() ) > 0 ) {
			foreach ( WC()->cart->get_cart() as $cart_item_key => $values ) {
				$_product = $values['data'];
				if ( $_product->get_id() == $product_id )
					$found = true;
			}
			// if product not found, add it
			if ( ! $found )
				WC()->cart->add_to_cart( $product_id );
		} else {
			// if no products in cart, add it
			WC()->cart->add_to_cart( $product_id );
		}
	}
}

add_action('woocommerce_thankyou', 'track_subscription', 10, 1);

function track_subscription( $order_id ) {
    if ( ! $order_id )
		return;
	$url = 'https://srv.mbtech.pro/pmt_sts/request.php';
	$order = wc_get_order( $order_id );
	$order_data = $order->get_data();
	$device_id = get_post_meta( $order_id, 'device_id', true );
	$email = $order_data['billing']['email'];
	$data = json_encode(array(
		"id" => $device_id,
			"email" => $email,
			"optype" => "1",
			"status" => "2"
	));
    $post_request = wp_remote_request( $url, array(
		'httpversion' => '1.0',
		'blocking'    => true,
		'headers'     => array(
			'Content-Type' => 'application/json'
		),
		'method' => 'POST',
		'body' => $data
	) );
}