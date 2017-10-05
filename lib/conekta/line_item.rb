module Conekta
  class LineItem < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :name, :description, :unit_price, :quantity,
                  :sku, :shippable, :tags, :brand, :type,
                  :parent_id

    def _url
      ensure_id

      "#{self.order._url}#{self.class._url}/#{id}"
    end

    def delete
      self.delete_member('order','line_items')
    end
  end
end
