require 'spec_helper'

describe Conekta::Log do
  include_context "API 1.0.0"
  it "test successful where" do
    events = Conekta::Log.where
    expect(events.class_name).to eq("ConektaObject")
    expect(events[0].class_name).to eq("Log")
  end

  it "test successful find" do
    events = Conekta::Log.where
    e = events.first

    event = Conekta::Log.find(e.id)

    expect(event).to be_a(Conekta::Log)
    expect(event.class_name).to eq("Log")
  end
end
