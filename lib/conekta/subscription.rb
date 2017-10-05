module Conekta
  class Subscription < Resource
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :created_at, :subscription_start, :canceled_at, :paused_at,
                  :billing_cycle_start, :billing_cycle_end, :trial_start,
                  :trial_end, :plan_id, :customer_id, :card_id

    def _url
      ensure_id

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
