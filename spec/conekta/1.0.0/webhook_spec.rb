require 'spec_helper'

describe Conekta::Webhook do
  include_context "API 1.0.0"
  let!(:events) do
    {
      events: [
        "charge.created", "charge.paid", "charge.under_fraud_review",
        "charge.fraudulent", "charge.refunded", "charge.created", "customer.created",
        "customer.updated", "customer.deleted", "webhook.created", "webhook.updated",
        "webhook.deleted", "charge.chargeback.created", "charge.chargeback.updated",
        "charge.chargeback.under_review", "charge.chargeback.lost", "charge.chargeback.won",
        "payout.created", "payout.retrying", "payout.paid_out", "payout.failed",
        "plan.created", "plan.updated", "plan.deleted", "subscription.created",
        "subscription.paused", "subscription.resumed", "subscription.canceled",
        "subscription.expired", "subscription.updated", "subscription.paid",
        "subscription.payment_failed", "payee.created", "payee.updated",
        "payee.deleted", "payee.payout_method.created",
        "payee.payout_method.updated", "payee.payout_method.deleted"
      ]
    }
  end
  let(:url) { { url: "http://localhost:3000/my_listener" } }

  # This spec was commented to avoid webhook creation saturation.
  # 
  # it "succesfully gets charge" do
  #   webhook =  Conekta::Webhook.create(url.merge(events))
  #   expect(webhook.url).to eq(url[:url])
  #   webhook = Conekta::Webhook.find(webhook.id)
  #   expect(webhook.url).to eq(url[:url])
  #   webhook.update({url: "http://localhost:2000/my_listener"})
  #   expect(webhook.url).to eq("http://localhost:2000/my_listener")
  #   webhook.delete
  # end
end
