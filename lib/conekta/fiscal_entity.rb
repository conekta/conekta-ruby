module Conekta
  class FiscalEntity < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    def _url
      if (id.nil? || id.to_s.empty?)
        exception = Error.new({
                                "message" => I18n.t('error.resource.id',  { resource: self.class.class_name, locale: :en }),
                                "message_to_purchaser" => I18n.t('error.resource.id_purchaser',  { locale: Conekta.locale.to_sym })
                              })

        if Conekta.api_version == "1.1.0"
          error_list = Conekta::ErrorList.new
          error_list.details << exception
          exception = error_list
        end

        raise exception
      end

      res = self.send(parent)._url + "/fiscal_entities/" + id
      puts "RES #{res}"
      res
    end

    def parent
      self.respond_to?(:order) ? "order" : "customer"
    end

    def delete
      self.delete_member(parent,'fiscal_entities')
    end
  end
end
