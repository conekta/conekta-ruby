require 'spec_helper'

describe Conekta::Event do
  it "test succesful where" do
    events = Conekta::Event.where
    expect(events.class_name).to eq("ConektaObject")
    expect(events[0].class_name).to eq("Event")
    if !events[0].webhook_logs.empty?
      expect(events[0].webhook_logs.first.class_name).to eq("WebhookLog")
    end
  end
end
