require 'spec_helper'

describe Conekta::Event do
  include_context "API 1.0.0"
  it "test successful where" do
    events = Conekta::Event.where
    expect(events.class_name).to eq("ConektaObject")
    expect(events[0].class_name).to eq("Event")
    if !events[0].webhook_logs.empty?
      expect(events[0].webhook_logs.first.class_name).to eq("WebhookLog")
    end
  end

  it "test successful find" do
    events = Conekta::Event.where
    e = events.first

    event = Conekta::Event.find(e.id)

    expect(event).to be_a(Conekta::Event)
    expect(event.class_name).to eq("Event")
    if !events[0].webhook_logs.empty?
      expect(events[0].webhook_logs.first.class_name).to eq("WebhookLog")
    end
  end
end
