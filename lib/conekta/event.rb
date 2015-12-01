module Conekta
  class Event < Resource
    include Conekta::Operations::Where
    include Conekta::Operations::Find
  end
end
