module Conekta
  module Operations
    module Find
      module ClassMethods
        def find(id)
          instance = self.new(id)
          response = Requestor.new.request(:get, instance._url)
          instance.load_from(response)
          instance
        end

        # <b>DEPRECATED:</b> Please use <tt>find</tt> instead.
        alias_method :retrieve, :find
      end
      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
