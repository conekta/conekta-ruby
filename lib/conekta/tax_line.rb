module Conekta
  class TaxLine < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :description, :amount, :parent_id, :metadata

    def _url
      ensure_id

      "#{self.order._url}#{self.class._url}/#{id}"
    end

    def delete
      self.delete_member('order', 'tax_lines')
    end
  end
end
