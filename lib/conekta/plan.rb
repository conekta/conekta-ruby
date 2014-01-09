module Conekta
  class Plan < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    include Conekta::Operations::CreateMember
  end
end
