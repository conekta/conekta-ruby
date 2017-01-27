module Conekta
  class Subscription < Resource
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :created_at, :subscription_start, :canceled_at, :paused_at,
                  :billing_cycle_start, :billing_cycle_end, :trial_start,
                  :trial_end, :plan_id, :customer_id, :card_id

    def _url
      if (id.nil? || id.to_s.empty?)
        exception = Error.new({
          "message" => I18n.t('error.resource.id',  { resource: self.class.class_name, locale: :en }),
          "message_to_purchaser" => I18n.t('error.resource.id_purchaser',  { locale: Conekta.locale.to_sym })
        })
        if Conekta.api_version == "2.0.0"
          error_list = Conekta::ErrorList.new
          error_list.details << exception
          exception = error_list
        end
        raise exception
      end
      self.customer._url + "/subscription"
    end
    def pause
      custom_action(:post, 'pause')
    end
    def resume
      custom_action(:post, 'resume')
    end
    def cancel
      custom_action(:post, 'cancel')
    end
  end
end
