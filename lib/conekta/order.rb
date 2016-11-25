module Conekta
  class Order < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Update
    include Conekta::Operations::CreateMember

    def load_from(response = nil)
      if response
        super
      end

      order     = self
      submodels = [:line_items]

      submodels.each do |submodel|
        self.send(submodel).each do |k,v|
          if !v.respond_to?(:deleted) || !v.deleted
            v.create_attr('order', order)

            self.send(submodel).set_val(k,v)
          end
        end
      end

    end

    def create_line_item(params)
      self.create_member('line_items', params)
    end

    def create_tax_line(params)
      self.create_member('tax_lines', params)
    end

  end
end
