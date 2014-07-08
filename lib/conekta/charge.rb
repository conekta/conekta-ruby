module Conekta
  class Charge < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::CustomAction
    def capture
      custom_action(:post, 'capture')
    end
    def refund(params=nil)
      params = { 'amount' => (params || self.amount) }
      custom_action(:post, 'refund', params)
    end
  end
end
