module Conekta
  class Subscription < Resource
    include Conekta::Operations::Update
    def url
      if id == nil
        raise Error.new('Could not get the id of ' + self.class.class_name + ' instance.')
      end
      self.customer.url + "/subscription"
    end
  end
end
