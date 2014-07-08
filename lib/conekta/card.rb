module Conekta
  class Card < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    def url
      raise Error.new('Could not get the id of ' + self.class.class_name + ' instance.') if (id.nil? || id.empty?)
      self.customer.url + self.class.url + "/" + id
    end
    def delete
      self.delete_member('customer','cards')
    end
  end
end
