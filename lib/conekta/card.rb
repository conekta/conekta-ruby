module Conekta
  class Card < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    def url
      if id == nil
        raise Exception.new("no id")
      end
      self.customer.url + self.class.url + "/" + id
    end
    def delete
      self.delete_member('customer','cards')
    end
  end
end
