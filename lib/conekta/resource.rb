module Conekta
  class Resource < ConektaObject
    def self._url()
      "/#{CGI.escape(self.class_name.downcase)}s"
    end
    def _url
      raise Error.new(
        I18n.t('error.resource.id',  { resource: self.class.class_name, locale: :en }),
        I18n.t('error.resource.id_purchaser',  { locale: Conekta.locale.to_sym })) if (id.nil? || id.empty?)

      return [self.class._url, id].join('/')
    end
  end
end
