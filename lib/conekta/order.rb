module Conekta
  class Order < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Update
    include Conekta::Operations::CreateMember

    def load_from(response = nil)
      if response
        super
      end

      order     = self
      submodels = [:line_items, :tax_lines, :shipping_lines, :discount_lines,
                   :returns, :charges]
      create_submodels_lists(order, submodels)

      if self.respond_to?(:fiscal_entity) && self.fiscal_entity
        self.fiscal_entity.create_attr('order', order)
      end
    end

    def create_line_item(params)
      self.create_member('line_items', params)
    end

    def create_tax_line(params)
      self.create_member('tax_lines', params)
    end

    def create_shipping_line(params)
      self.create_member('shipping_lines', params)
    end

    def create_discount_line(params)
      self.create_member('discount_lines', params)
    end

    def create_charge(params)
      self.create_member('charges', params)
    end

    def create_fiscal_entity(params)
      self.update(fiscal_entity: params).fiscal_entity
    end

    def create_shipping_contact(params)
      self.update(shipping_contact: params).shipping_contact
    end

    def create_submodels_lists(order, submodels)
      submodels.each do |submodel|
        self.send(submodel).each do |k, v|
          v.create_attr('order', order)

          self.send(submodel).set_val(k,v)
        end
      end
    end
  end
end
