module Conekta
  class Order < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Update
    include Conekta::Operations::CreateMember
    include Conekta::Operations::CustomAction

    attr_accessor :livemode, :amount, :payment_status, :customer_id, :currency,
                  :metadata, :created_at, :updated_at, :tax_lines, :line_items,
                  :shipping_lines, :discount_lines, :shipping_contact, :charges

    def initialize(id=nil)
      @id = id
      @line_items ||= List.new("LineItem", {})
      @tax_lines ||= List.new("TaxLine", {})
      @shipping_lines ||= List.new("ShippingLine", {})
      @discount_lines ||= List.new("DiscountLine", {})
      @charges ||= List.new("Charge", {})
      super(id)
    end

    def load_from(response = nil)
      if response
        super
      end

      order     = self
      submodels = [:line_items, :tax_lines, :shipping_lines, :discount_lines,
                   :charges]
      create_submodels_lists(order, submodels)
    end

    #Attribute accessors
    def create_line_item(params)
      self.create_member_with_relation('line_items', params, self)
    end

    def create_tax_line(params)
      self.create_member_with_relation('tax_lines', params, self)
    end

    def create_shipping_line(params)
      self.create_member_with_relation('shipping_lines', params, self)
    end

    def create_discount_line(params)
      self.create_member_with_relation('discount_lines', params, self)
    end

    def create_charge(params)
      self.create_member('charges', params)
    end

    def create_shipping_contact(params)
      self.update(shipping_contact: params).shipping_contact
    end

		#State transitions
    def authorize_capture(params={})
      custom_action(:post, 'capture', params)
    end

    def void(params={})
      custom_action(:post, 'void', params)
    end

    def refund(params={})
      custom_action(:post, 'refund', params)
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
