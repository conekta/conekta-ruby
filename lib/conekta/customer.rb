module Conekta
  class Customer < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    include Conekta::Operations::CreateMember
    def load_from(response=nil)
      if response
        super
      end
      customer  =  self
      submodels = if Conekta.api_version == "1.1.0"
                    [:fiscal_entities, :sources, :shipping_contacts]
                  else
                    [:cards]
                  end

      submodels.each do |submodel|
        self.send(submodel).each do |k,v|
          if !v.respond_to? :deleted or !v.deleted
            v.create_attr('customer', customer)
            self.send(submodel).set_val(k,v)
          end
        end
      end
      if self.respond_to? :subscription and self.subscription
         self.subscription.create_attr('customer', customer)
      end
    end
    def create_card(params)
      self.create_member('cards', params)
    end
    def create_source(params)
      self.create_member('sources', params)
    end
    def create_subscription(params)
      self.create_member('subscription', params)
    end
    def create_fiscal_entity(params)
      self.create_member('fiscal_entities', params)
    end
    def create_shipping_contact(params)
      self.create_member('shipping_contacts', params)
    end
  end
end
