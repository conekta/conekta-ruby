module Conekta
  module Operations
    module CreateMember
      def create_member(member, params)
        _url     = [self._url, member].join('/')
        member   = member.to_sym
        response = Requestor.new.request(:post, _url, params)

        if self.send(member) &&
           (self.send(member).class.class_name == "ConektaObject" ||
            self.send(member).class.class_name == "List")
          arr = []

          if self.send(member).class.class_name == "List"
            self.send(member).add_element(response)
          else
            self.method(member).call.values.each do |_,v|
              arr << v.to_hash
            end

            arr << response
            self.send(member).load_from(arr)
            self.load_from
          end

          instances = self.send(member)
          instance = instances.last
        else
          instance = Util.types[member.to_s].new()
          instance.load_from(response)
          self.create_attr(member.to_s, instance)
          self.set_val(member.to_sym, instance)
          self.load_from
        end

        instance
      end
    end
  end
end