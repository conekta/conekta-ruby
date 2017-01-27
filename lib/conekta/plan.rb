module Conekta
  class Plan < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    include Conekta::Operations::CreateMember

    attr_accessor :livemode, :created_at, :name, :amount, :currency,
                  :interval, :frequency, :expiry_count, :trial_period_days,
                  :created_at

  end
end
