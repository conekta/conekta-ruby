module Conekta
  class Subscription < Resource
    include Conekta::Operations::Update
    def url
      if id == nil
        raise Exception.new("no id")
      end
      self.customer.url + "/subscription"
    end
  end
end