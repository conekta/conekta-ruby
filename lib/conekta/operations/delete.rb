module Conekta
  module Operations
    module Delete
      def delete
        self.custom_action(:delete, nil, nil)
        self
      end
      def delete_member(parent, member)
        self.custom_action(:delete, nil, nil)
        parent = parent.to_sym
        member = member.to_sym
        obj = self.method(parent).call.method(member).call
        if obj.class.class_name == "ConektaObject"
          self.method(parent).call.method(member).call.each do |(k, v)|
            if v.id == self.id
              self.method(parent).call.method(member).call.unset_key(k)
              self.method(parent).call.method(member).call[k] = nil
              break
            end
          end
        else
          self.class.send(:define_method, member, Proc.new {nil})
        end
        self
      end
    end
  end
end
