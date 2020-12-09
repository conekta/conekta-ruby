require "spec_helper"

describe Conekta::Checkout do
  include_context "API 2.0.0"

  before(:each) do
    if Conekta.api_base == "https://api.conekta.io"
      skip("This test should be run in staging.")
    end
  end

  let(:customer_info) do
    {
      name: "John Constantine",
      phone: "4493424352",
      email: "hola@hola.com",
    }
  end

  let(:line_items) do
    [{
      name: "Box of Cohiba S1s",
      unit_price: 35000,
      quantity: 1,
    }]
  end

  let(:msi_enabled) do
    {
      monthly_installments_enabled: true,
      monthly_installments_options: [3, 6, 12],
    }
  end

  let(:recurrent) do
    {
      recurrent: true,
      payments_limit_count: 10,
    }
  end

  let(:order_template) do
    {
      currency: "MXN",
      line_items: line_items,
      customer_info: customer_info,
      metadata: {
        "mycustomkey": "12345",
        "othercustomkey": "abcde",
      },
    }
  end

  let(:order_template_no_customer) do
    {
      currency: "MXN",
      line_items: line_items,
      metadata: {
        "mycustomkey": "12345",
        "othercustomkey": "abcde",
      },
    }
  end

  let(:checkout_data) do
    {
      name: "Payment Link Name",
      type: "PaymentLink",
      recurrent: false,
      expired_at: (Time.now + 259200).to_i,
      allowed_payment_methods: ["cash", "card", "bank_transfer"],
      needs_shipping_contact: false,
      order_template: order_template,
    }
  end

  let(:checkout_data_no_customer) do
    {
      name: "Payment Link Name",
      type: "PaymentLink",
      recurrent: false,
      expired_at: (Time.now + 259200).to_i,
      allowed_payment_methods: ["cash", "card", "bank_transfer"],
      needs_shipping_contact: false,
      order_template: order_template_no_customer,
    }
  end

  let(:checkout_invalid_expired_at) do
    {
      name: "Payment Link Name",
      type: "PaymentLink",
      recurrent: false,
      expired_at: (Time.now + 3600).to_i,
      allowed_payment_methods: ["cash", "card", "bank_transfer"],
      needs_shipping_contact: false,
      order_template: order_template,
    }
  end

  let(:checkout_data_with_msi) do
    checkout_data.merge(msi_enabled)
  end

  let(:checkout_data_recurrent) do
    checkout_data_no_customer.merge(recurrent)
  end

  context "creating payment link" do
    it "successful checkout create" do
      checkout = Conekta::Checkout.create(checkout_data)

      expect(checkout).to be_a(Conekta::Checkout)
      expect(checkout.id).not_to eq("")
      expect(checkout.id.length).to eq(36)
      expect(checkout.type).to eq("PaymentLink")
      expect(checkout.livemode).to eq(false)
      expect(checkout.needs_shipping_contact).to eq(false)
      expect(checkout.monthly_installments_enabled).to eq(false)
      expect(checkout.slug).not_to eq("")
      expect(checkout.url).not_to eq("")
    end

    it "unsuccessful checkout create" do
      expect {
        Conekta::Checkout.create({})
      }.to raise_error(Conekta::ParameterValidationError)
    end

    it "unsuccessful checkout expired at create" do
      expect {
        Conekta::Checkout.create(checkout_invalid_expired_at)
      }.to raise_error(Conekta::ParameterValidationError)
    end

    it "successful with monthly installments enabled" do
      checkout = Conekta::Checkout.create(checkout_data_with_msi)

      expect(checkout).to be_a(Conekta::Checkout)
      expect(checkout.id).not_to eq("")
      expect(checkout.id.length).to eq(36)
      expect(checkout.type).to eq("PaymentLink")
      expect(checkout.livemode).to eq(false)
      expect(checkout.needs_shipping_contact).to eq(false)
      expect(checkout.monthly_installments_enabled).to eq(true)
      expect(checkout.monthly_installments_options.length).to eq(3)
      expect(checkout.slug).not_to eq("")
      expect(checkout.url).not_to eq("")
    end

    it "successful with recurrent" do
      checkout = Conekta::Checkout.create(checkout_data_recurrent)

      expect(checkout).to be_a(Conekta::Checkout)
      expect(checkout.id).not_to eq("")
      expect(checkout.id.length).to eq(36)
      expect(checkout.type).to eq("PaymentLink")
      expect(checkout.livemode).to eq(false)
      expect(checkout.needs_shipping_contact).to eq(false)
      expect(checkout.recurrent).to eq(true)
      expect(checkout.payments_limit_count).to eq(10)
      expect(checkout.slug).not_to eq("")
      expect(checkout.url).not_to eq("")
    end
  end

  context "get" do
    it "successfully gets checkout" do
      id = Conekta::Checkout.create(checkout_data).id

      checkout = Conekta::Checkout.find(id)

      expect(checkout).to be_a(Conekta::Checkout)
    end

    it "test successful checkout where" do
      checkouts = Conekta::Checkout.where

      expect(checkouts).to be_a(Conekta::List)
      expect(checkouts.elements_type).to eq("Checkout")
      expect(checkouts.first).to be_a(Conekta::Checkout)
    end
  end

  context "notifications with payment link" do
    it "unsuccessful send a checkout sms" do
      expect {
        checkout = Conekta::Checkout.create(checkout_data)
        expect(checkout.sms_sent).to eq(0)

        checkout.send_sms({
          "phone": "5555555555",
        })
      }.to raise_error(Conekta::ProcessingError)
    end

    it "successfully send a checkout email" do
      checkout = Conekta::Checkout.create(checkout_data)
      expect(checkout.emails_sent).to eq(0)

      checkout.send_email({
        "email": "test@mail.com",
      })

      checkoutFound = Conekta::Checkout.find(checkout.id)
      expect(checkoutFound.emails_sent).to eq(1)
    end
  end

  context "cancel checkout request" do
    it "successful cancel a checkout" do
      checkout = Conekta::Checkout.create(checkout_data)
      id = checkout.id
      expect(checkout.status).to eq("Issued")

      checkout.cancel({
        "id": id,
      })

      checkoutFound = Conekta::Checkout.find(id)
      expect(checkoutFound.status).to eq("Cancelled")
    end
  end
end
