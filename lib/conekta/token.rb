module Conekta
  class Token < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Create
  end
end
