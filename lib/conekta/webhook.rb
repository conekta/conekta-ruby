module Conekta
  class Webhook < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction

    attr_accessor :url, :status, :production_enabled, :development_enabled, :subscribed_events
  end
end
