module Conekta
  module Operations
    module Where
      module ClassMethods
        def where(params=nil)
          instance = ConektaObject.new
          url = Util.types[self.class_name.downcase].url
          requestor = Requestor.new
          response = requestor.request(:get, url,params)
          instance.load_from(response)
          instance
        end
        # <b>DEPRECATED:</b> Please use <tt>where</tt> instead.
        def all(params=nil)
          instance = ConektaObject.new
          url = Util.types[self.class_name.downcase].url
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
