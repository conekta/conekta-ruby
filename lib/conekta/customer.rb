module Conekta
  class Customer < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    include Conekta::Operations::CreateMember

    attr_accessor :livemode, :name, :email, :phone, :default_shipping_contact_id,
                  :referrer, :account_age,
                  :paid_transactions, :first_paid_at, :corporate, :default_payment_source_id,
                  :shipping_contacts, :subscription, :payment_sources, :cards

    def initialize(id=nil)
      @id = id
      @payment_sources ||= List.new("PaymentSource", {})
      @shipping_contacts ||= List.new("ShippingContacts", {})
      super(id)
    end

    def load_from(response=nil)
      if response
        super
      end

      customer = self

      if Conekta.api_version == "2.0.0"
        submodels = [:payment_sources, :shipping_contacts]
        create_submodels_lists(customer, submodels)
      else
        submodels = [:cards]

        submodels.each do |submodel|
          self.send(submodel).each do |k,v|
            if !v.respond_to? :deleted or !v.deleted
              v.create_attr('customer', customer)

              self.send(submodel).set_val(k,v)
            end
          end
        end
      end

      if self.respond_to? :subscription and self.subscription
         self.subscription.create_attr('customer', customer)
      end
    end

    def create_card(params)
      self.create_member_with_relation('cards', params, self)
    end

    def create_payment_source(params)
      self.create_member_with_relation('payment_sources', params, self)
    end

    def create_subscription(params)
      self.create_member('subscription', params)
    end

    def create_shipping_contact(params)
      self.create_member_with_relation('shipping_contacts', params, self)
    end

    def create_submodels_lists(customer, submodels)
      submodels.each do |submodel|
        self.send(submodel).each do |k, v|
          v.create_attr('customer', customer)

          self.send(submodel).set_val(k,v)
        end if self.respond_to?(submodel) && !self.send(submodel).nil?
      end
    end
  end
end
