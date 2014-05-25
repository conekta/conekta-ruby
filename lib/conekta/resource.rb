module Conekta
  class Resource < ConektaObject
    def self.url()
      "/#{CGI.escape(self.class_name.downcase)}s"
    end
    def url
      if id == nil || id == ""
        raise Error.new(I18n.t('error.resource.id',  {resource: self.class.class_name, locale: :en}), I18n.t('error.resource.id',  {resource: self.class.class_name, locale: Conekta.locale.to_sym}))
      end
      self.class.url + "/" + id
    end
  end
end
