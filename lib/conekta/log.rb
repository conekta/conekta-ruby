module Conekta
  class Log < Resource
    include Conekta::Operations::Where
    include Conekta::Operations::Find
  end
end
