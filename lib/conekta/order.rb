module Conekta
  class Order < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Update
    include Conekta::Operations::CreateMember

    def create_line_item(params)
      self.create_member('line_items', params)
    end

    def create_tax_line(params)
      self.create_member('tax_lines', params)
    end

  end
end
