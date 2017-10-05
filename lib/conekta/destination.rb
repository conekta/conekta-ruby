module Conekta
  class Destination < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :payee_id, :created_at, :type, :currency,
                  :last4, :account_holder_name, :bank

    def _url
      ensure_id

      self.payee._url + self.class._url + "/" + id
    end
    def delete
      self.delete_member('payee','destinations')
    end
  end
end
