module Conekta
  module Operations
    module Where
      module ClassMethods
        def where(params=nil)
          instance = ConektaObject.new
          _url = Util.types[self.class_name.downcase]._url
          response = Requestor.new.request(:get, _url, params)
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
