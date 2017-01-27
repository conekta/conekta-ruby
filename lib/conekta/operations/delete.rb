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
        obj    = self.method(parent).call.method(member).call

        if obj.class.class_name == "ConektaObject"
          self.method(parent).call.method(member).call.each do |(k, v)|
            if v.id == self.id
              self.method(parent).call.method(member).call[k] = nil
              # Shift hash array
              shift = false
              self.method(parent).call.method(member).call.each_with_index do |v,i|
                if shift
                  self.method(parent).call.method(member).call.set_val(i-1,v[1])
                  self.method(parent).call.method(member).call[i-1] = v[1]
                end
                if v[1] == nil
                  shift = true
                end
              end
              n_members = self.method(parent).call.method(member).call.count
              last_index = n_members - 1
              # Remove last member because the hash array was shifted
              self.method(parent).call.method(member).call.unset_key(last_index)
              self.method(parent).call.method(member).call.delete(last_index)
              break
            end
          end
        else
          self.create_attr(member.to_s, nil)
        end
        self
      end
    end
  end
end
