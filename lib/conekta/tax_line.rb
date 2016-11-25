module Conekta
  class TaxLine < Resource
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    def _url
      raise Error.new(
        I18n.t('error.resource.id',  { resource: self.class.class_name, locale: :en }),
        I18n.t('error.resource.id_purchaser',  { locale: Conekta.locale.to_sym })) if (id.nil? || id.empty?)

      "/orders/#{self.parent_id}/#{self.class._url}/#{id}"
    end

  end
end
