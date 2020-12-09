module Conekta
  class Checkout < Resource
    include Conekta::Operations::Create
    include Conekta::Operations::Where
    include Conekta::Operations::Find
    include Conekta::Operations::CustomAction

    attr_accessor :_id, :livemode, :company_id, :entity_id, :emails_sent,
                  :sms_sent, :name, :slug, :status, :url,
                  :type, :recurrent, :is_redirect_on_failure,
                  :payments_limit_count, :paid_payments_count,
                  :expires_at, :allowed_payment_methods,
                  :needs_shipping_contact, :monthly_installments_options,
                  :monthly_installments_enabled,
                  :returns_control_on, :on_demand_enabled

    def _url
      ensure_id

      "/checkouts/#{id}"
    end

    def send_sms(params = {})
      custom_action(:post, "sms", params)
    end

    def send_email(params = {})
      custom_action(:post, "email", params)
    end

    def cancel(params = {})
      custom_action(:put, "cancel", params)
    end
  end
end
