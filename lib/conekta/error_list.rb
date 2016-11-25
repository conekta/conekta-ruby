module Conekta
  class ErrorList < Exception
    attr_accessor :details

    def initialize
      @details = []
    end

    def self.error_handler(response, http_status)
      exception = nil
      if response.instance_of?(Hash)
        if response.has_key?("details")
          error_list = ErrorList.new
          response["details"].each do |error|
            error_list.details << self.build_error(response, http_status)
          end
          error_list.details << self.build_error(nil, nil) if error_list.details.empty?
          exception = error_list
        end
      end
      exception ||= self.build_error(response, http_status)
      raise exception
    end

    private 
    def self.build_error(response, http_status)
      Error.error_handler(response, http_status)
    end
  end
end