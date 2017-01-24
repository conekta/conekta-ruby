shared_context "API 2.0.0" do
  before(:all) do
    Conekta.api_version = "2.0.0"
  end

  after(:all) do
    Conekta.api_version = "1.0.0"
  end
end

shared_context "API 1.0.0" do
  before(:all) do
    Conekta.api_version = "1.0.0"
  end

  after(:all) do
    Conekta.api_version = "2.0.0"
  end
end

shared_context "order" do
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
      currency:   'mxn',
      line_items: line_items
    }
  end
end

shared_context "customer" do
  let(:customer_data) do
    {
      email:   "hola@hola.com",
      name:    "John Constantine",
      payment_sources:  [ { token_id: "tok_test_visa_4242", type: "card" }]
    }
  end
end
