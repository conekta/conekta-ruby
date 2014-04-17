module Conekta
  class Payee < Resource
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
      payee = self
      self.payout_methods.each do |k,v|
        if !v.respond_to? :deleted or !v.deleted
          v.create_attr('payee', payee)
          self.payout_methods.set_val(k,v)
        end
      end
    end
    def create_payout_method(params)
      self.create_member('payout_methods', params)
    end
  end
end
