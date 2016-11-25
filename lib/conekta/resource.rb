module Conekta
  class Resource < ConektaObject
    attr_accessor :id
    def initialize(id=nil)
      @id = id
      super()
    end
    def self._url()
      "/#{CGI.escape(self.class_name.downcase)}s"
    end
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

      return [self.class._url, id].join('/')
    end
  end
end
