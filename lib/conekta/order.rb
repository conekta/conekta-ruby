module Conekta
  class Order < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Update
    include Conekta::Operations::CreateMember
    include Conekta::Operations::CustomAction

    attr_accessor :livemode, :amount, :status, :customer_id, :currency, :capture,
                  :metadata, :created_at, :updated_at, :tax_lines, :line_items,
                  :shipping_lines, :discount_lines, :shipping_contact, :fiscal_entity,
                  :charges, :returns

    def initialize(id=nil)
      @id = id
      @line_items ||= List.new("LineItem", {})
      @tax_lines ||= List.new("TaxLine", {})
      @shipping_lines ||= List.new("ShippingLine", {})
      @discount_lines ||= List.new("DiscountLine", {})
      @charges ||= List.new("Charge", {})
      @returns ||= List.new("Return", {})
      super(id)
    end

    def load_from(response = nil)
      if response
        super
      end

      order     = self
      submodels = [:line_items, :tax_lines, :shipping_lines, :discount_lines,
                   :charges, :returns]
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

    def create_return(params)
      self.create_member('returns', params)
    end

    def create_fiscal_entity(params)
      self.update(fiscal_entity: params).fiscal_entity
    end

    def create_shipping_contact(params)
      self.update(shipping_contact: params).shipping_contact
    end

    def capture_order
      custom_action(:put, 'capture')
    end

    private

    def create_submodels_lists(order, submodels)
      submodels.each do |submodel|
        self.send(submodel).each do |k, v|
          v.create_attr('order', order)

          self.send(submodel).set_val(k,v)
        end if self.respond_to?(submodel) && !self.send(submodel).nil?
      end
    end

  end
end
