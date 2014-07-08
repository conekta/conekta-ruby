module Conekta
  module Operations
    module CustomAction
      def custom_action(method, action=nil, params=nil)
        url = action ? [self.url, action].join('/') : self.url
        response = Requestor.new.request(method, url, params)

        self.load_from(response)
        self
      end
    end
  end
end
