module Conekta
  class Token < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Create

    attr_accessor :livemode, :used
  end
end
