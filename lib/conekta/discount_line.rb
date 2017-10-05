module Conekta
  class DiscountLine < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :code, :amount, :type, :parent_id

    def _url
      ensure_id

      "#{self.order._url}#{self.class._url}/#{id}"
    end

    def delete
      self.delete_member('order', 'discount_lines')
    end
  end
end
