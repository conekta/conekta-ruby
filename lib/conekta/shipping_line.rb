module Conekta
  class ShippingLine < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :description, :amount, :carrier, :shipping_line_method, :tracking_number,
                  :parent_id, :metadata

    def _url
      ensure_id

      "#{self.order._url}#{self.class._url}/#{id}"
    end

    def delete
      self.delete_member('order', 'shipping_lines')
    end
  end
end
