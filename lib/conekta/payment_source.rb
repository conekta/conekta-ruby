module Conekta
  class PaymentSource < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    def _url
      ensure_id

      self.customer._url + self.class._url + "/" + id
    end

    def delete
      self.delete_member('customer', 'payment_sources')
    end
  end
end
