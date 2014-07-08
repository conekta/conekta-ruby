module Conekta
  module Operations
    module Create
      module ClassMethods
        def create(params)
          url = Util.types[self.class_name.downcase].url
          response = Requestor.new.request(:post, url, params)
          instance = self.new
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
