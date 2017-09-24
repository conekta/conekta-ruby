module Conekta
  class ShippingContact < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :receiver, :phone, :between_streets, :parent_id, :default

    def _url
      ensure_id

      self.customer._url + self.class._url + "/" + id
    end

    def delete
      self.delete_member('customer', 'shipping_contacts')
    end
  end
end
