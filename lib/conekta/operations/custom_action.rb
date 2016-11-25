module Conekta
  module Operations
    module CustomAction
      def custom_action(method, action=nil, params=nil)
        _url     = action ? [self._url, action].join('/') : self._url
        response = Requestor.new.request(method, _url, params)

        self.load_from(response)
        self
      end
    end
  end
end
