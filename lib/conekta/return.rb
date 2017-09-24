module Conekta
  class Return < Resource

    attr_accessor :livemode, :amount, :currency, :charge_id, :reason,
                  :created_at, :parent_id
    def _url
      ensure_id

      "#{self.order._url}#{self.class._url}/#{id}"
    end
  end
end
