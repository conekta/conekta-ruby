module Conekta
  class Charge < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::CustomAction

    attr_accessor :livemode, :amount, :created_at, :currency, :description,
                  :reference_id, :failure_code, :failure_message, :fee,
                  :monthly_installments, :device_fingerprint, :status,
                  :exchange_rate, :foreign_currency, :amount_in_foreign_currency,
                  :checkout_id, :checkout_order_count

    def capture
      custom_action(:post, 'capture')
    end
    def refund(params=nil)
      params = { 'amount' => (params || self.amount) }
      custom_action(:post, 'refund', params)
    end
  end
end
