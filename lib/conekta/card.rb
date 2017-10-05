module Conekta
  class Card < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :created_at, :last4, :bin, :name,
                  :exp_month, :exp_year, :brand,
                  :parent_id, :default

    def _url
      ensure_id

      self.customer._url + self.class._url + "/" + id
    end

    def delete
      self.delete_member('customer','cards')
    end
  end
end
