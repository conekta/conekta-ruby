module Conekta
  module Operations
    module Update
      def update(params)
        requestor = Requestor.new
        url = self.url
        response = requestor.request(:put, url, params)
        self.load_from(response)
        self
      end
    end
  end
end
