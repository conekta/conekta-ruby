module Conekta
  class Error < StandardError
    attr_reader :message, :type, :log_id, :details, :data
    
    def initialize(options={})
      @type = options["type"]
      @log_id = options["log_id"]
      if options["details"]
        @details = options["details"].collect{|details|
          Conekta::ErrorDetails.new(details)
        }
      else
        temp_details = Conekta::ErrorDetails.new({
            "message" => options["message_to_purchaser"],
            "debug_message" => options["message"],
            "param" => options["param"]
          })
        @details = [temp_details]
      end
      @message = @details.first.debug_message
      @data = options["data"]

      super
    end

    def class_name
      self.class.name.split('::')[-1]
    end

    def self.error_handler(response, http_status)
      if http_status.to_s.empty? || http_status == 0
        NoConnectionError.new({
          "details" => [
            {
              "debug_message" => I18n.t(
                'error.requestor.connection',
                { base: Conekta.api_base, locale: :en }
              ),
              "message" => I18n.t(
                'error.requestor.connection_purchaser',
                { locale: Conekta.locale.to_sym }
              ),
              "code" => "error.requestor.connection"
            }
          ]
        })
      else
        case http_status
        when -1, 0
          NoConnectionError.new(response)
        when 400
          MalformedRequestError.new(response)
        when 401
          AuthenticationError.new(response)
        when 402
          ProcessingError.new(response)
        when 404
          ResourceNotFoundError.new(response)
        when 409
          VersionConflictError.new(response)
        when 422
          ParameterValidationError.new(response)
        when 428
          PreconditionRequiredError.new(response)
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

  class VersionConflictError < Error 
  end

  class PreconditionRequiredError < Error 
  end

  class MalformedRequestError < Error 
  end
end
