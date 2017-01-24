module Conekta
  class Event < Resource
    include Conekta::Operations::Where
    include Conekta::Operations::Find

    attr_accessor :data, :livemode, :webhook_status, :created_at, :type

  end
end