require 'spec_helper'

describe Conekta::Order do
  include_context "API 1.1.0"

  let(:customer_info) do
    {
      name: "John Constantine",
      phone: "+5213353319758",
      email: "hola@hola.com"
    }
  end
  let(:customer_data) do
    {
      email: "hola@hola.com",
      name: "John Constantine",
      cards: ["tok_test_visa_4242"]
    }
  end
  let(:charges) do
    [{
        source: {
            type: "oxxo_cash",
            expires_at: (Time.now + 3600).to_i
        },
        amount: 35000
    }]
  end
  let(:line_items) do
    [{
        name: "Box of Cohiba S1s",
        description: "Imported From Mex.",
        unit_price: 35000,
        quantity: 1,
        tags: ["food", "mexican food"],
        type: "physical"
    }]
  end
  let(:order_data) do
    {
      currency: 'mxn',
      line_items: line_items
    }
  end
  let(:order_data_with_charges) do
    order_data.merge(charges: charges)
  end

  context "creating orders" do
    it "successful order create" do
      order = Conekta::Order.create(order_data)

      expect(order).to be_a(Conekta::Order)
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

        it "with both customer_info and customer_id" do
          customer = Conekta::Customer.create(customer_data)

          customer_params = {
            customer_info: customer_info,
            customer_id:   customer.id
          }

          expect {
            Conekta::Order.create(order_data_with_charges.merge(customer_params))
          }.to raise_error(Conekta::ParameterValidationError)
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
      }.to raise_error
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
end
