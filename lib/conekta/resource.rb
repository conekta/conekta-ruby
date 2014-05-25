module Conekta
  class Resource < ConektaObject
    def self.url()
      "/#{CGI.escape(self.class_name.downcase)}s"
    end
    def url
      if id == nil || id == ""
        raise Error.new('Could not get the id of ' + self.class.class_name + ' instance.', 'No se pudo obtener el id de la instancia de ' + self.class.class_name + '.')
      end
      self.class.url + "/" + id
    end
  end
end
