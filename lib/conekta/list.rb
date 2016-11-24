module Conekta
  class List < ConektaObject
    attr_accessor :starting_after, :ending_before, :has_more, :total
    
    def load_from(response)
      @starting_after = response["starting_after"]
      @ending_before = response["ending_before"]
      @has_more = response["has_more"]
      @total = response["total"]
      super(response["data"])
    end
  end
end