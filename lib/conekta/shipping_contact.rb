module Conekta
  class ShippingContact < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :receiver, :phone, :between_streets, :parent_id, :default

    def _url
      if (id.nil? || id.to_s.empty?)
        exception = Error.new({
                                "message" => I18n.t('error.resource.id',  { resource: self.class.class_name, locale: :en }),
                                "message_to_purchaser" => I18n.t('error.resource.id_purchaser',  { locale: Conekta.locale.to_sym })
                              })

        if Conekta.api_version == "2.0.0"
          error_list = Conekta::ErrorList.new
          error_list.details << exception
          exception = error_list
        end

        raise exception
      end

      self.customer._url + self.class._url + "/" + id
    end

    def delete
      self.delete_member('customer', 'shipping_contacts')
    end
  end
end
