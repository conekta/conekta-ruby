module Conekta
  class Transaction < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
  end
end