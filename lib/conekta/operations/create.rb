module Conekta
  module Operations
    module Create
      module ClassMethods
        def create(params)
          _url = Util.types[self.class_name.downcase]._url
          response = Requestor.new.request(:post, _url, params)
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
