require 'spec_helper'

describe Conekta::Plan do
  include_context "API 1.0.0"
  context "get/where" do
    it "test succesful get plan" do
      plans = Conekta::Plan.where
      p = plans.first;
      plan = Conekta::Plan.find(p.id)
      expect(plan).to be_a(Conekta::Plan)
    end

    it "test succesful where" do
      plans = Conekta::Plan.where
      expect(plans.class_name).to eq("ConektaObject")
      expect(plans.first).to be_a(Conekta::Plan)
    end
  end

  context "creating plans" do
    it "test succesful create plan" do
      plan = Conekta::Plan.create(
        id: ((0...8).map { (65 + rand(26)).chr }.join),
        name: "Gold Plan",
        amount: 10000,
        currency: "MXN",
        interval: "month",
        frequency: 10,
        trial_period_days: 15,
        expiry_count: 12
      )
      expect(plan).to be_a(Conekta::Plan)
    end
  end

  context "updating plans" do
    it "test update plan" do
      plans = Conekta::Plan.where
      plan = plans.first
      plan.update({name: "Silver Plan"})
      expect(plan.name).to eq("Silver Plan")
    end
  end

  context "deleting plans" do
    it "test delete plan" do
      plans = Conekta::Plan.where
      plan = plans.first
      plan.delete
      expect(plan.deleted).to eq(true)
    end
  end
end
