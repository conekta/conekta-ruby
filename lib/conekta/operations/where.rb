module Conekta
  module Operations
    module Where

      def self.handle_type_of_paging(response, class_name, params)
        if response.kind_of?(Hash) && response["object"] == "list"
          List.new(class_name, params)
        else
          ConektaObject.new
        end
      end

      module ClassMethods
        def where(params=nil)
          _url = Util.types[self.class_name.downcase]._url
          response = Requestor.new.request(:get, _url, params)
          instance = ::Conekta::Operations::Where.handle_type_of_paging(response, self.class_name, params)
          instance.load_from(response)
          instance
        end

        # <b>DEPRECATED:</b> Please use <tt>where</tt> instead.
        alias_method :all, :where
      end
      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end