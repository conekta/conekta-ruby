=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

# Common files
require 'conekta/api_client'
require 'conekta/api_error'
require 'conekta/version'
require 'conekta/configuration'

# Models
require 'conekta/models/api_key_create_response'
require 'conekta/models/api_key_request'
require 'conekta/models/api_key_response'
require 'conekta/models/api_key_response_on_delete'
require 'conekta/models/api_key_update_request'
require 'conekta/models/balance_common_field'
require 'conekta/models/balance_response'
require 'conekta/models/blacklist_rule_response'
require 'conekta/models/charge_order_response'
require 'conekta/models/charge_order_response_payment_method'
require 'conekta/models/charge_request'
require 'conekta/models/charge_request_payment_method'
require 'conekta/models/charge_response'
require 'conekta/models/charge_response_channel'
require 'conekta/models/charge_response_payment_method'
require 'conekta/models/charge_response_refunds'
require 'conekta/models/charge_response_refunds_data'
require 'conekta/models/charge_update_request'
require 'conekta/models/charges_data_response'
require 'conekta/models/checkout'
require 'conekta/models/checkout_order_template'
require 'conekta/models/checkout_order_template_customer_info'
require 'conekta/models/checkout_request'
require 'conekta/models/checkout_response'
require 'conekta/models/checkouts_response'
require 'conekta/models/company_fiscal_info_address_response'
require 'conekta/models/company_fiscal_info_response'
require 'conekta/models/company_payout_destination_response'
require 'conekta/models/company_response'
require 'conekta/models/create_customer_fiscal_entities_response'
require 'conekta/models/create_customer_payment_methods_request'
require 'conekta/models/create_customer_payment_methods_response'
require 'conekta/models/create_risk_rules_data'
require 'conekta/models/customer'
require 'conekta/models/customer_address'
require 'conekta/models/customer_antifraud_info'
require 'conekta/models/customer_antifraud_info_response'
require 'conekta/models/customer_fiscal_entities_data_response'
require 'conekta/models/customer_fiscal_entities_request'
require 'conekta/models/customer_fiscal_entities_response'
require 'conekta/models/customer_info'
require 'conekta/models/customer_info_just_customer_id'
require 'conekta/models/customer_info_just_customer_id_response'
require 'conekta/models/customer_payment_method_request'
require 'conekta/models/customer_payment_methods_data'
require 'conekta/models/customer_payment_methods_request'
require 'conekta/models/customer_payment_methods_response'
require 'conekta/models/customer_response'
require 'conekta/models/customer_response_shipping_contacts'
require 'conekta/models/customer_shipping_contacts'
require 'conekta/models/customer_shipping_contacts_address'
require 'conekta/models/customer_shipping_contacts_data_response'
require 'conekta/models/customer_shipping_contacts_response'
require 'conekta/models/customer_shipping_contacts_response_address'
require 'conekta/models/customer_update_fiscal_entities_request'
require 'conekta/models/customer_update_shipping_contacts'
require 'conekta/models/customers_response'
require 'conekta/models/delete_api_keys_response'
require 'conekta/models/deleted_blacklist_rule_response'
require 'conekta/models/deleted_whitelist_rule_response'
require 'conekta/models/details'
require 'conekta/models/details_error'
require 'conekta/models/discount_lines_data_response'
require 'conekta/models/discount_lines_response'
require 'conekta/models/email_checkout_request'
require 'conekta/models/error'
require 'conekta/models/event_response'
require 'conekta/models/event_types'
require 'conekta/models/events_resend_response'
require 'conekta/models/fiscal_entity_address'
require 'conekta/models/get_api_keys_response'
require 'conekta/models/get_charges_response'
require 'conekta/models/get_companies_response'
require 'conekta/models/get_customer_payment_method_data_response'
require 'conekta/models/get_events_response'
require 'conekta/models/get_order_discount_lines_response'
require 'conekta/models/get_orders_response'
require 'conekta/models/get_payment_method_response'
require 'conekta/models/get_plans_response'
require 'conekta/models/get_transactions_response'
require 'conekta/models/get_transfers_response'
require 'conekta/models/get_webhook_keys_response'
require 'conekta/models/get_webhooks_response'
require 'conekta/models/log_response'
require 'conekta/models/logs_response'
require 'conekta/models/logs_response_data'
require 'conekta/models/order_capture_request'
require 'conekta/models/order_customer_info_response'
require 'conekta/models/order_discount_lines_request'
require 'conekta/models/order_fiscal_entity_address_response'
require 'conekta/models/order_fiscal_entity_request'
require 'conekta/models/order_fiscal_entity_response'
require 'conekta/models/order_next_action_response'
require 'conekta/models/order_next_action_response_redirect_to_url'
require 'conekta/models/order_refund_request'
require 'conekta/models/order_request'
require 'conekta/models/order_request_customer_info'
require 'conekta/models/order_response'
require 'conekta/models/order_response_charges'
require 'conekta/models/order_response_checkout'
require 'conekta/models/order_response_customer_info'
require 'conekta/models/order_response_discount_lines'
require 'conekta/models/order_response_products'
require 'conekta/models/order_response_shipping_contact'
require 'conekta/models/order_tax_request'
require 'conekta/models/order_update_fiscal_entity_request'
require 'conekta/models/order_update_request'
require 'conekta/models/order_update_request_customer_info'
require 'conekta/models/orders_response'
require 'conekta/models/page'
require 'conekta/models/pagination'
require 'conekta/models/payment_method'
require 'conekta/models/payment_method_bank_transfer'
require 'conekta/models/payment_method_card'
require 'conekta/models/payment_method_card_request'
require 'conekta/models/payment_method_card_response'
require 'conekta/models/payment_method_cash'
require 'conekta/models/payment_method_cash_request'
require 'conekta/models/payment_method_cash_response'
require 'conekta/models/payment_method_general_request'
require 'conekta/models/payment_method_response'
require 'conekta/models/payment_method_spei_recurrent'
require 'conekta/models/payment_method_spei_request'
require 'conekta/models/payment_method_token_request'
require 'conekta/models/payout'
require 'conekta/models/payout_method'
require 'conekta/models/payout_order'
require 'conekta/models/payout_order_payouts_item'
require 'conekta/models/payout_order_response'
require 'conekta/models/payout_order_response_customer_info'
require 'conekta/models/payout_orders_response'
require 'conekta/models/plan_request'
require 'conekta/models/plan_response'
require 'conekta/models/plan_update_request'
require 'conekta/models/product'
require 'conekta/models/product_data_response'
require 'conekta/models/product_order_response'
require 'conekta/models/risk_rules_data'
require 'conekta/models/risk_rules_list'
require 'conekta/models/shipping_order_response'
require 'conekta/models/shipping_request'
require 'conekta/models/sms_checkout_request'
require 'conekta/models/subscription_events_response'
require 'conekta/models/subscription_request'
require 'conekta/models/subscription_response'
require 'conekta/models/subscription_update_request'
require 'conekta/models/token'
require 'conekta/models/token_card'
require 'conekta/models/token_checkout'
require 'conekta/models/token_response'
require 'conekta/models/token_response_checkout'
require 'conekta/models/transaction_response'
require 'conekta/models/transfer_destination_response'
require 'conekta/models/transfer_method_response'
require 'conekta/models/transfer_response'
require 'conekta/models/transfers_response'
require 'conekta/models/update_customer'
require 'conekta/models/update_customer_antifraud_info'
require 'conekta/models/update_customer_fiscal_entities_response'
require 'conekta/models/update_customer_payment_methods_response'
require 'conekta/models/update_order_discount_lines_request'
require 'conekta/models/update_order_tax_request'
require 'conekta/models/update_order_tax_response'
require 'conekta/models/update_payment_methods'
require 'conekta/models/update_product'
require 'conekta/models/webhook_key_create_response'
require 'conekta/models/webhook_key_delete_response'
require 'conekta/models/webhook_key_request'
require 'conekta/models/webhook_key_response'
require 'conekta/models/webhook_key_update_request'
require 'conekta/models/webhook_log'
require 'conekta/models/webhook_request'
require 'conekta/models/webhook_response'
require 'conekta/models/webhook_update_request'
require 'conekta/models/whitelistlist_rule_response'

# APIs
require 'conekta/api/antifraud_api'
require 'conekta/api/api_keys_api'
require 'conekta/api/balances_api'
require 'conekta/api/charges_api'
require 'conekta/api/companies_api'
require 'conekta/api/customers_api'
require 'conekta/api/discounts_api'
require 'conekta/api/events_api'
require 'conekta/api/logs_api'
require 'conekta/api/orders_api'
require 'conekta/api/payment_link_api'
require 'conekta/api/payment_methods_api'
require 'conekta/api/payout_orders_api'
require 'conekta/api/plans_api'
require 'conekta/api/products_api'
require 'conekta/api/shipping_contacts_api'
require 'conekta/api/shippings_api'
require 'conekta/api/subscriptions_api'
require 'conekta/api/taxes_api'
require 'conekta/api/tokens_api'
require 'conekta/api/transactions_api'
require 'conekta/api/transfers_api'
require 'conekta/api/webhook_keys_api'
require 'conekta/api/webhooks_api'

module Conekta
  class << self
    # Customize default settings for the SDK using block.
    #   Conekta.configure do |config|
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
