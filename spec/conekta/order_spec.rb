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

  let(:fiscal_entity) do
    {
      tax_id: "AMGH851205MN1",
      company_name: "Nike SA de CV",
      address: {
        street1: "250 Alexis St",
        internal_number: 19,
        external_number: 91,
        city: "Red Deer",
        state: "Alberta",
        country: "CA",
        zip: "T4N 0B8"
      }
    }
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

    it "successful order with fiscal_entity create" do
      order = Conekta::Order.create(order_data.merge(fiscal_entity: fiscal_entity))
      expect(order.fiscal_entity).to be_a(Conekta::FiscalEntity)
      expect(order.fiscal_entity.order).to eq(order)
    end

    it "unsuccessful order create" do
      expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::ParameterValidationError) \
        { Conekta::Order.create({}) }
    end

    context "with charges" do
      it "successful order create" do
        order = Conekta::Order.create(order_data_with_charges.
                                      merge(customer_info: customer_info))

        expect(order).to be_a(Conekta::Order)
      end

      context "unsuccessful order create" do
        it "with missing customer_info and customer_id" do
          expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::ParameterValidationError) \
            { Conekta::Order.create(order_data_with_charges) }
        end

        xit "with both customer_info and customer_id" do
          customer = Conekta::Customer.create(customer_data)

          customer_params = {
            customer_info: customer_info,
            customer_id:   customer.id
          }

          expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::ParameterValidationError) \
            { Conekta::Order.create(order_data_with_charges.merge(customer_params)) }
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
      expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::ParameterValidationError) \
        { order.update(charges: charges) }
    end
  end

  context "creating submodels" do
    let(:classes) do
      {
        line_item: "LineItem",
        tax_line:  "TaxLine",
        shipping_line: "ShippingLine",
        discount_line: "DiscountLine",
        fiscal_entity: "FiscalEntity"
      }
    end

    let(:line_item_params) do
      {
        name: "Box of Cohiba S1s",
        description: "Imported From Mex.",
        unit_price: 35000,
        quantity: 1,
        tags: ["food", "mexican food"],
        type: "physical"
      }
    end

    let(:tax_line_params) do
      {
        description: "IVA",
        amount:      600
      }
    end

    let(:shipping_line_params) do
      {
        description:     "Otro Shipping",
        amount:          40,
        tracking_number: "TRACK124",
        carrier:         "USPS",
        method:          "Train",
      }
    end

    let(:fiscal_entity_params) do
      {
        tax_id: "AMGH851205MN2",
        company_name: "Nike SA de CV",
        address: {
          street1: "250 Alexis St",
          internal_number: 20,
          external_number: 02,
          city: "Red Deer",
          state: "Alberta",
          country: "CA",
          zip: "T4N 0B8"
        }
      }
    end

    let(:discount_line_params) do
      {
        description: "Cupon de descuento",
        kind:        "loyalty",
        amount:      10
      }
    end

    let(:charge_params) do
      {
        source: {
          type: "oxxo_cash",
          expires_at: (Time.now + 3600).to_i
        },
        amount: 35000
      }
    end

    it "successfully creates charge for order" do
      other_params = {
        currency: 'mxn',
        customer_info: {
          name: 'John Constantine',
          phone: '+5213353319758',
          email: 'hola@hola.com'
        }
      }

      order = Conekta::Order.create(order_data.merge(other_params))
      new_submodel = order.create_charge charge_params

      expect(new_submodel.class.to_s).to eq("Conekta::Charge")
    end

    it "successfully creates line item for order" do
      order = Conekta::Order.create order_data
      new_submodel = order.create_line_item line_item_params

      expect(new_submodel.class.to_s).to eq("Conekta::LineItem")
    end

    it "successfully creates tax line for order" do
      order = Conekta::Order.create order_data
      new_submodel = order.create_tax_line tax_line_params

      expect(new_submodel.class.to_s).to eq("Conekta::TaxLine")
    end

    it "successfully creates shipping line for order" do
      order = Conekta::Order.create order_data
      new_submodel = order.create_shipping_line shipping_line_params

      expect(new_submodel.class.to_s).to eq("Conekta::ShippingLine")
    end

    it "successfully creates discount line for order" do
      order = Conekta::Order.create order_data
      new_submodel = order.create_discount_line discount_line_params

      expect(new_submodel.class.to_s).to eq("Conekta::DiscountLine")
    end

    it "successfully creates fiscal entity for order" do
      order = Conekta::Order.create order_data
      new_submodel = order.create_fiscal_entity fiscal_entity_params

      expect(new_submodel.class.to_s).to eq("Conekta::FiscalEntity")
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
