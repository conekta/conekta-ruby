require "spec_helper"

describe Conekta::Order do
  include_context "API 2.0.0"

  let(:customer_info) do
    {
      name: "John Constantine",
      phone: "3353319758",
      email: "hola@hola.com",
    }
  end

  let(:customer_data) do
    {
      email: "hola@hola.com",
      name: "John Constantine",
      cards: ["tok_test_visa_4242"],
    }
  end

  let(:charges) do
    [{
      payment_method: {
        type: "oxxo_cash",
        expires_at: (Time.now + 3600).to_i,
      },
      amount: 35000,
    }]
  end

  let(:card_charges) do
    [{
      payment_method: {
        type: "card",
        token_id: "tok_test_visa_4242",
      },
      amount: 35000,
    }]
  end

  let(:line_items) do
    [{
      name: "Box of Cohiba S1s",
      description: "Imported From Mex.",
      unit_price: 35000,
      quantity: 1,
      tags: ["food", "mexican food"],
    }]
  end

  let(:msi_enabled) do
    {
      monthly_installments_enabled: true,
      monthly_installments_options: [3, 6, 12],
    }
  end

  let(:save_card_in_checkout) do
    {
      on_demand_enabled: true,
    }
  end

  let(:checkout_data) do
    {
      expired_at: (Time.now + 259200).to_i,
      allowed_payment_methods: ["cash", "card", "bank_transfer"],
    }
  end

  let(:checkout_msi) do
    checkout_data.merge(msi_enabled)
  end

  let(:checkout_save_card) do
    checkout_data.merge(save_card_in_checkout)
  end

  let(:order_data) do
    {
      currency: "mxn",
      line_items: line_items,
      metadata: {
        test: true,
      },
    }
  end

  let(:order_data_with_charges) do
    order_data.merge(charges: charges)
  end

  let(:order_data_with_card_charges) do
    order_data.merge(charges: card_charges)
  end

  let(:order_data_with_checkout) do
    order_data.merge(checkout: checkout_data)
  end

  let(:order_data_with_checkout_msi) do
    order_data.merge(checkout: checkout_msi)
  end

  let(:order_data_with_checkout_save_card) do
    order_data.merge(checkout: checkout_save_card)
  end

  context "creating orders" do
    it "successful order create" do
      order = Conekta::Order.create(order_data)

      expect(order).to be_a(Conekta::Order)
      expect(order.metadata["test"]).to eq(true)
    end

    it "unsuccessful order create" do
      expect {
        Conekta::Order.create({})
      }.to raise_error(Conekta::ParameterValidationError)
    end

    context "with charges" do
      it "successful order create" do
        order = Conekta::Order.create(order_data_with_charges.
          merge(customer_info: customer_info))

        expect(order).to be_a(Conekta::Order)
      end

      context "unsuccessful order create" do
        it "with missing customer_info and customer_id" do
          expect {
            Conekta::Order.create(order_data_with_charges)
          }.to raise_error(Conekta::ParameterValidationError)
        end
      end
    end

    context "with checkout components" do
      before(:each) do
        if Conekta.api_base == "https://api.conekta.io"
          skip("This test should be run in staging.")
        end
      end

      it "successful order create" do
        order = Conekta::Order.create(order_data_with_checkout.
          merge(customer_info: customer_info))

        expect(order).to be_a(Conekta::Order)
        expect(order.checkout.class.to_s).to eq("Conekta::Checkout")
        expect(order.checkout.id).not_to eq("")
        expect(order.checkout.type).to eq("Integration")
        expect(order.checkout.monthly_installments_enabled).to eq(false)
      end

      context "with checkout components monthly installments create" do
        it "with missing customer_info and customer_id" do
          order = Conekta::Order.create(order_data_with_checkout_msi.
            merge(customer_info: customer_info))

          expect(order).to be_a(Conekta::Order)
          expect(order.checkout.class.to_s).to eq("Conekta::Checkout")
          expect(order.checkout.id).not_to eq("")
          expect(order.checkout.type).to eq("Integration")
          expect(order.checkout.monthly_installments_enabled).to eq(true)
        end
      end

      context "with checkout components save card create" do
        it "with missing customer_info and customer_id" do
          order = Conekta::Order.create(order_data_with_checkout_save_card.
            merge(customer_info: customer_info))

          expect(order).to be_a(Conekta::Order)
          expect(order.checkout.class.to_s).to eq("Conekta::Checkout")
          expect(order.checkout.id).not_to eq("")
          expect(order.checkout.type).to eq("Integration")
          expect(order.checkout.on_demand_enabled).to eq(true)
        end
      end
    end
  end

  context "updating orders" do
    let(:order) { Conekta::Order.create(order_data) }

    it "successful order update" do
      order.update(charges: charges, customer_info: customer_info)

      expect(order.charges).not_to be_empty
    end

    it "unsuccessful order update" do
      expect {
        order.update(charges: charges)
      }.to raise_error(Conekta::ParameterValidationError)
    end
  end

  context "creating submodels" do
    let(:line_item_params) do
      {
        name: "Box of Cohiba S1s",
        description: "Imported From Mex.",
        unit_price: 35000,
        quantity: 1,
        tags: ["food", "mexican food"],
      }
    end

    let(:tax_line_params) do
      {
        description: "IVA",
        amount: 600,
      }
    end

    let(:shipping_line_params) do
      {
        description: "Otro Shipping",
        amount: 40,
        tracking_number: "TRACK124",
        carrier: "USPS",
        method: "Train",
      }
    end

    let(:discount_line_params) do
      {
        code: "Cupon de descuento",
        type: "loyalty",
        amount: 10,
      }
    end

    let(:charge_params) do
      {
        payment_method: {
          type: "oxxo_cash",
          expires_at: (Time.now + 3600).to_i,
        },
        amount: 35000,
      }
    end

    let(:shipping_contact_params) do
      {
        id: "1jap4jmcjnwh34",
        email: "thomas.logan@xmen.org",
        phone: "+5213353319758",
        receiver: "Marvin Fuller",
        between_streets: "Ackerman Crescent",
        address: {
          street1: "250 Alexis St",
          city: "Red Deer",
          state: "Alberta",
          country: "MX",
          postal_code: "78219",
          residential: true,
        },
      }
    end

    let(:order) { Conekta::Order.create(order_data) }

    it "successfully creates charge for order" do
      other_params = {
        currency: "mxn",
        customer_info: {
          name: "John Constantine",
          phone: "+5213353319758",
          email: "hola@hola.com",
        },
      }

      order = Conekta::Order.create(order_data.merge(other_params))
      charge = order.create_charge(charge_params)

      expect(charge.class.to_s).to eq("Conekta::Charge")
      expect(order.charges.class.to_s).to eq("Conekta::List")
    end

    it "successfully creates line item for order" do
      line_item = order.create_line_item(line_item_params)

      expect(line_item.class.to_s).to eq("Conekta::LineItem")
      expect(order.line_items.class.to_s).to eq("Conekta::List")
    end

    it "successfully creates tax line for order" do
      tax_line = order.create_tax_line(tax_line_params)
      new_tax_line = order.create_tax_line(description: "ISR", amount: 2)

      expect(tax_line.class.to_s).to eq("Conekta::TaxLine")
      expect(order.tax_lines.class.to_s).to eq("Conekta::List")
      expect(order.tax_lines.total).to eq(2)
    end

    it "successfully creates shipping line for order" do
      shipping_line = order.create_shipping_line(shipping_line_params)

      expect(shipping_line.class.to_s).to eq("Conekta::ShippingLine")
      expect(order.shipping_lines.class.to_s).to eq("Conekta::List")
    end

    it "successfully creates discount line for order" do
      discount_line = order.create_discount_line(discount_line_params)

      discount_line.update({ amount: 1000 })

      expect(discount_line.class.to_s).to eq("Conekta::DiscountLine")
      expect(order.discount_lines.class.to_s).to eq("Conekta::List")
    end

    it "successfully create shipping contact for order" do
      shipping_contact = order.create_shipping_contact(shipping_contact_params)

      expect(shipping_contact.class.to_s).to eq("Conekta::ShippingContact")
    end
  end

  context "get" do
    it "successfully gets order" do
      id = Conekta::Order.create(order_data).id

      order = Conekta::Order.find(id)

      expect(order).to be_a(Conekta::Order)
    end

    it "test successful where" do
      orders = Conekta::Order.where

      expect(orders).to be_a(Conekta::List)
      expect(orders.elements_type).to eq("Order")
      expect(orders.first).to be_a(Conekta::Order)
    end
  end

  it "successfully captures an order" do
    order = Conekta::Order.create(order_data_with_card_charges.
      merge(customer_info: customer_info, pre_authorize: true))
    expect(order.payment_status).to eq("pre_authorized")

    order.authorize_capture

    expect(order.payment_status).to eq("paid")
  end

  context "refund" do
    let(:order_refund) do
      {
        amount: 35000,
        reason: "requested_by_client",
      }
    end

    it "test successful refund" do
      order = Conekta::Order.create(order_data_with_card_charges.
        merge(customer_info: customer_info).
        merge(line_items: line_items))
      begin
        order.refund(order_refund)
      rescue Exception => e
        puts e.details.map { |d| d.message }
      end

      refunded_order = Conekta::Order.find(order.id)

      expect(refunded_order.payment_status).to eq("refunded")
    end
  end
end
