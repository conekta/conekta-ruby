module Conekta
  class Charge < Resource
    include Conekta::Operations::Get
    include Conekta::Operations::Where
    include Conekta::Operations::Create
  end
end
