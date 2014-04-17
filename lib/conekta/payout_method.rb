module Conekta
  class PayoutMethod < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    def url
      if id == nil || id == ""
        raise Error.new('Could not get the id of ' + self.class.class_name + ' instance.')
      end
      self.payee.url + self.class.url + "/" + id
    end
    def delete
      self.delete_member('payee','payout_methods')
    end
  end
end
