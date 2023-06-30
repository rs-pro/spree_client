=begin
#Platform API

#Spree Platform API

The version of the OpenAPI document: v2
Contact: we@sparksolutions.co
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

# Common files
require 'spree_client/api_client'
require 'spree_client/api_error'
require 'spree_client/version'
require 'spree_client/configuration'

# Models
require 'spree_client/models/add_item_shipment_params'
require 'spree_client/models/add_item_shipment_params_shipment'
require 'spree_client/models/amount_param'
require 'spree_client/models/coupon_code_param'
require 'spree_client/models/create_address_params'
require 'spree_client/models/create_address_params_address'
require 'spree_client/models/create_adjustment_params'
require 'spree_client/models/create_adjustment_params_adjustment'
require 'spree_client/models/create_classification_params'
require 'spree_client/models/create_classification_params_classification'
require 'spree_client/models/create_cms_page_request'
require 'spree_client/models/create_cms_section_request'
require 'spree_client/models/create_data_feed_params'
require 'spree_client/models/create_data_feed_params_data_feed'
require 'spree_client/models/create_digital_link_params'
require 'spree_client/models/create_digital_link_params_digital_link'
require 'spree_client/models/create_feature_cms_page_params'
require 'spree_client/models/create_feature_cms_page_params_cms_page'
require 'spree_client/models/create_featured_article_cms_section_params'
require 'spree_client/models/create_featured_article_cms_section_params_cms_section'
require 'spree_client/models/create_hero_image_cms_section_params'
require 'spree_client/models/create_hero_image_cms_section_params_cms_section'
require 'spree_client/models/create_homepage_cms_page_params'
require 'spree_client/models/create_homepage_cms_page_params_cms_page'
require 'spree_client/models/create_image_gallery_cms_section_params'
require 'spree_client/models/create_image_gallery_cms_section_params_cms_section'
require 'spree_client/models/create_line_item_params'
require 'spree_client/models/create_line_item_params_line_item'
require 'spree_client/models/create_menu_item_params'
require 'spree_client/models/create_menu_item_params_menu_item'
require 'spree_client/models/create_menu_params'
require 'spree_client/models/create_menu_params_menu'
require 'spree_client/models/create_option_type_params'
require 'spree_client/models/create_option_type_params_option_type'
require 'spree_client/models/create_option_value_params'
require 'spree_client/models/create_option_value_params_option_value'
require 'spree_client/models/create_order_params'
require 'spree_client/models/create_order_params_order'
require 'spree_client/models/create_payment_method_params'
require 'spree_client/models/create_payment_method_params_payment_method'
require 'spree_client/models/create_product_carousel_cms_section_params'
require 'spree_client/models/create_product_carousel_cms_section_params_cms_section'
require 'spree_client/models/create_product_params'
require 'spree_client/models/create_product_params_product'
require 'spree_client/models/create_promotion_action_params'
require 'spree_client/models/create_promotion_action_params_promotion_action'
require 'spree_client/models/create_promotion_category_params'
require 'spree_client/models/create_promotion_category_params_promotion_category'
require 'spree_client/models/create_promotion_params'
require 'spree_client/models/create_promotion_params_promotion'
require 'spree_client/models/create_promotion_rule_params'
require 'spree_client/models/create_promotion_rule_params_promotion_rule'
require 'spree_client/models/create_rich_text_cms_section_params'
require 'spree_client/models/create_rich_text_cms_section_params_cms_section'
require 'spree_client/models/create_role_params'
require 'spree_client/models/create_role_params_role'
require 'spree_client/models/create_shipment_params'
require 'spree_client/models/create_shipment_params_shipment'
require 'spree_client/models/create_shipping_category_params'
require 'spree_client/models/create_shipping_category_params_shipping_category'
require 'spree_client/models/create_shipping_method_params'
require 'spree_client/models/create_shipping_method_params_shipping_method'
require 'spree_client/models/create_side_by_side_images_cms_section_params'
require 'spree_client/models/create_side_by_side_images_cms_section_params_cms_section'
require 'spree_client/models/create_standard_cms_page_params'
require 'spree_client/models/create_standard_cms_page_params_cms_page'
require 'spree_client/models/create_stock_item_params'
require 'spree_client/models/create_stock_item_params_stock_item'
require 'spree_client/models/create_stock_location_params'
require 'spree_client/models/create_stock_location_params_stock_location'
require 'spree_client/models/create_store_credit_category_params'
require 'spree_client/models/create_store_credit_category_params_store_credit_category'
require 'spree_client/models/create_store_credit_params'
require 'spree_client/models/create_store_credit_params_store_credit'
require 'spree_client/models/create_store_credit_type_params'
require 'spree_client/models/create_store_credit_type_params_store_credit_type'
require 'spree_client/models/create_tax_category_params'
require 'spree_client/models/create_tax_category_params_tax_category'
require 'spree_client/models/create_tax_rate_params'
require 'spree_client/models/create_tax_rate_params_tax_rate'
require 'spree_client/models/create_tax_rate_params_tax_rate_calculator_attributes'
require 'spree_client/models/create_taxon_params'
require 'spree_client/models/create_taxon_params_taxon'
require 'spree_client/models/create_taxonomy_params'
require 'spree_client/models/create_taxonomy_params_taxonomy'
require 'spree_client/models/create_user_params'
require 'spree_client/models/create_user_params_user'
require 'spree_client/models/create_webhook_subscriber_params'
require 'spree_client/models/create_webhook_subscriber_params_subscriber'
require 'spree_client/models/create_wished_item_params'
require 'spree_client/models/create_wished_item_params_wished_item'
require 'spree_client/models/create_wishlist_params'
require 'spree_client/models/create_wishlist_params_wishlist'
require 'spree_client/models/create_zone_params'
require 'spree_client/models/create_zone_params_zone'
require 'spree_client/models/error'
require 'spree_client/models/menu_item_reposition'
require 'spree_client/models/menu_item_reposition_menu_item'
require 'spree_client/models/remove_item_shipment_params'
require 'spree_client/models/resource'
require 'spree_client/models/resource_properties'
require 'spree_client/models/resources_list'
require 'spree_client/models/resources_list_data_inner'
require 'spree_client/models/resources_list_links'
require 'spree_client/models/resources_list_meta'
require 'spree_client/models/shipping_calculator_params'
require 'spree_client/models/taxon_reposition'
require 'spree_client/models/taxon_reposition_taxon'
require 'spree_client/models/update_address_params'
require 'spree_client/models/update_address_params_address'
require 'spree_client/models/update_adjustment_params'
require 'spree_client/models/update_adjustment_params_adjustment'
require 'spree_client/models/update_classification_params'
require 'spree_client/models/update_classification_params_classification'
require 'spree_client/models/update_cms_page_request'
require 'spree_client/models/update_cms_section_request'
require 'spree_client/models/update_data_feed_params'
require 'spree_client/models/update_digital_link_params'
require 'spree_client/models/update_digital_link_params_digital_link'
require 'spree_client/models/update_feature_cms_page_params'
require 'spree_client/models/update_feature_cms_page_params_cms_page'
require 'spree_client/models/update_featured_article_cms_section_params'
require 'spree_client/models/update_featured_article_cms_section_params_cms_section'
require 'spree_client/models/update_hero_image_cms_section_params'
require 'spree_client/models/update_hero_image_cms_section_params_cms_section'
require 'spree_client/models/update_homepage_cms_page_params'
require 'spree_client/models/update_homepage_cms_page_params_cms_page'
require 'spree_client/models/update_image_gallery_cms_section_params'
require 'spree_client/models/update_image_gallery_cms_section_params_cms_section'
require 'spree_client/models/update_line_item_params'
require 'spree_client/models/update_line_item_params_line_item'
require 'spree_client/models/update_menu_item_params'
require 'spree_client/models/update_menu_item_params_menu_item'
require 'spree_client/models/update_menu_params'
require 'spree_client/models/update_menu_params_menu'
require 'spree_client/models/update_option_type_params'
require 'spree_client/models/update_option_type_params_option_type'
require 'spree_client/models/update_option_value_params'
require 'spree_client/models/update_option_value_params_option_value'
require 'spree_client/models/update_order_params'
require 'spree_client/models/update_payment_method_params'
require 'spree_client/models/update_payment_method_params_bogus_gateway'
require 'spree_client/models/update_payment_method_params_bogus_gateway_payment_method'
require 'spree_client/models/update_payment_method_params_payment_method'
require 'spree_client/models/update_payment_method_request'
require 'spree_client/models/update_product_carousel_cms_section_params'
require 'spree_client/models/update_product_carousel_cms_section_params_cms_section'
require 'spree_client/models/update_product_params'
require 'spree_client/models/update_product_params_product'
require 'spree_client/models/update_promotion_action_calculator_params'
require 'spree_client/models/update_promotion_action_calculator_params_promotion'
require 'spree_client/models/update_promotion_action_calculator_params_promotion_promotion_actions_attributes_inner'
require 'spree_client/models/update_promotion_action_calculator_params_promotion_promotion_actions_attributes_inner_all_of_calculator_attributes'
require 'spree_client/models/update_promotion_action_params'
require 'spree_client/models/update_promotion_action_params_promotion_action'
require 'spree_client/models/update_promotion_add_action_params'
require 'spree_client/models/update_promotion_add_action_params_promotion'
require 'spree_client/models/update_promotion_add_action_params_promotion_promotion_actions_attributes_inner'
require 'spree_client/models/update_promotion_add_rule_params'
require 'spree_client/models/update_promotion_add_rule_params_promotion'
require 'spree_client/models/update_promotion_add_rule_params_promotion_promotion_rules_attributes_inner'
require 'spree_client/models/update_promotion_category_params'
require 'spree_client/models/update_promotion_category_params_promotion_category'
require 'spree_client/models/update_promotion_change_action_params'
require 'spree_client/models/update_promotion_change_action_params_promotion'
require 'spree_client/models/update_promotion_change_action_params_promotion_promotion_actions_attributes_inner'
require 'spree_client/models/update_promotion_change_calculator_params'
require 'spree_client/models/update_promotion_change_calculator_params_promotion'
require 'spree_client/models/update_promotion_change_calculator_params_promotion_promotion_actions_attributes_inner'
require 'spree_client/models/update_promotion_change_calculator_params_promotion_promotion_actions_attributes_inner_all_of_calculator_attributes'
require 'spree_client/models/update_promotion_params'
require 'spree_client/models/update_promotion_params_promotion'
require 'spree_client/models/update_promotion_request'
require 'spree_client/models/update_promotion_rule_params'
require 'spree_client/models/update_promotion_rule_params_promotion_rule'
require 'spree_client/models/update_promotion_update_rule_params'
require 'spree_client/models/update_promotion_update_rule_params_promotion'
require 'spree_client/models/update_promotion_update_rule_params_promotion_promotion_rules_attributes_inner'
require 'spree_client/models/update_rich_text_cms_section_params'
require 'spree_client/models/update_rich_text_cms_section_params_cms_section'
require 'spree_client/models/update_role_params'
require 'spree_client/models/update_role_params_role'
require 'spree_client/models/update_shipment_params'
require 'spree_client/models/update_shipment_params_shipment'
require 'spree_client/models/update_shipping_category_params'
require 'spree_client/models/update_shipping_method_params'
require 'spree_client/models/update_shipping_method_params_shipping_method'
require 'spree_client/models/update_side_by_side_images_cms_section_params'
require 'spree_client/models/update_side_by_side_images_cms_section_params_cms_section'
require 'spree_client/models/update_standard_cms_page_params'
require 'spree_client/models/update_standard_cms_page_params_cms_page'
require 'spree_client/models/update_stock_item_params'
require 'spree_client/models/update_stock_location_params'
require 'spree_client/models/update_store_credit_category_params'
require 'spree_client/models/update_store_credit_params'
require 'spree_client/models/update_store_credit_type_params'
require 'spree_client/models/update_store_credit_type_params_store_credit_type'
require 'spree_client/models/update_tax_category_params'
require 'spree_client/models/update_tax_rate_params'
require 'spree_client/models/update_taxon_params'
require 'spree_client/models/update_taxon_params_taxon'
require 'spree_client/models/update_taxonomy_params'
require 'spree_client/models/update_taxonomy_params_taxonomy'
require 'spree_client/models/update_user_params'
require 'spree_client/models/update_user_params_user'
require 'spree_client/models/update_webhook_subscriber_params'
require 'spree_client/models/update_wished_item_params'
require 'spree_client/models/update_wishlist_params'
require 'spree_client/models/update_wishlist_params_wishlist'
require 'spree_client/models/update_zone_params'
require 'spree_client/models/update_zone_params_address'
require 'spree_client/models/validation_errors'

# APIs
require 'spree_client/api/addresses_api'
require 'spree_client/api/adjustments_api'
require 'spree_client/api/cms_pages_api'
require 'spree_client/api/cms_sections_api'
require 'spree_client/api/classifications_api'
require 'spree_client/api/countries_api'
require 'spree_client/api/data_feeds_api'
require 'spree_client/api/digital_assets_api'
require 'spree_client/api/digital_links_api'
require 'spree_client/api/line_items_api'
require 'spree_client/api/menu_items_api'
require 'spree_client/api/menus_api'
require 'spree_client/api/option_types_api'
require 'spree_client/api/option_values_api'
require 'spree_client/api/orders_api'
require 'spree_client/api/payment_methods_api'
require 'spree_client/api/payments_api'
require 'spree_client/api/products_api'
require 'spree_client/api/promotion_actions_api'
require 'spree_client/api/promotion_categories_api'
require 'spree_client/api/promotion_rules_api'
require 'spree_client/api/promotions_api'
require 'spree_client/api/roles_api'
require 'spree_client/api/shipments_api'
require 'spree_client/api/shipping_categories_api'
require 'spree_client/api/shipping_methods_api'
require 'spree_client/api/states_api'
require 'spree_client/api/stock_items_api'
require 'spree_client/api/stock_locations_api'
require 'spree_client/api/store_credit_categories_api'
require 'spree_client/api/store_credit_types_api'
require 'spree_client/api/store_credits_api'
require 'spree_client/api/tax_categories_api'
require 'spree_client/api/tax_rates_api'
require 'spree_client/api/taxonomies_api'
require 'spree_client/api/taxons_api'
require 'spree_client/api/users_api'
require 'spree_client/api/variants_api'
require 'spree_client/api/webhook_events_api'
require 'spree_client/api/webhook_subscribers_api'
require 'spree_client/api/wished_items_api'
require 'spree_client/api/wishlists_api'
require 'spree_client/api/zones_api'

module SpreeClient
  class << self
    # Customize default settings for the SDK using block.
    #   SpreeClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end