module Conekta
  class ErrorDetails < ConektaObject
    attr_reader :debug_message, :message, :param, :code
    
    def initialize(options={})
      load_from(options)
      @debug_message = options["debug_message"]
      @message = options["message"]
      @param = options["param"]
      @code = options["code"]
      super()
    end
  end
end
