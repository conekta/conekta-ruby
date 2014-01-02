module Conekta
  class Resource < ConektaObject
    def self.url()
      "/#{CGI.escape(self.class_name.downcase)}s"
    end
    def url
      if id == nil
        raise Error.new('Could not get the id of ' + self.class.class_name + ' instance.')
      end
      self.class.url + "/" + id
    end
  end
end
