module Conekta
  class Error < Exception
    attr_reader :message, :message_to_purchaser, :param, :code
    # NEW FIELDS
    attr_reader :validation_error, :custom_message
    # <b>DEPRECATED</b>.
    attr_reader :type
    

    def initialize(options={})
      @message = options["message"]
      @message_to_purchaser = options["message_to_purchaser"]
      @param = options["param"]
      @code = options["code"]
      @validation_error = options["validation_error"]
      @validation_error = options["custom_message"]
      @type = options["type"]
    end
    def class_name
      self.class.name.split('::')[-1]
    end
    def self.error_handler(response, http_status)
      if http_status.to_s.empty? || http_status == 0
        NoConnectionError.new({
          "message" => I18n.t('error.requestor.connection',  { base: Conekta.api_base, locale: :en }),
          "message_to_purchaser" => I18n.t('error.requestor.connection_purchaser',  { locale: Conekta.locale.to_sym })
          })
      else
        case http_status
        when 400
          MalformedRequestError.new(response)
        when 401
          AuthenticationError.new(response)
        when 402
          ProcessingError.new(response)
        when 404
          ResourceNotFoundError.new(response)
        when 422
          ParameterValidationError.new(response)
        when 500
          ApiError.new(response)
        else
          Error.new(response)
        end
      end
    end
  end
  class ApiError < Error    
  end
  
  class NoConnectionError < Error 
  end

  class AuthenticationError < Error 
  end

  class ParameterValidationError < Error 
  end

  class ProcessingError < Error 
  end

  class ResourceNotFoundError < Error 
  end

  class MalformedRequestError < Error 
  end
end