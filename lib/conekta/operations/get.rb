module Conekta
  module Operations
    module Get
      module ClassMethods
        def get(id)
          instance = self.new(id)
          url = instance.url
          requestor = Requestor.new
          response = requestor.request(:get, url)
          instance.load_from(response)
          instance
        end
      end
      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
