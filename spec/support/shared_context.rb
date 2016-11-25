shared_context "API 1.1.0" do
  before(:all) do
    Conekta.api_base    = "http://0.0.0.0:3000"
    Conekta.api_version = "1.1.0"
    Conekta.api_key     = "FAKIOXUSc4ca4238a0b9"
  end

  after(:all) do
    Conekta.api_base    = "https://api.conekta.io"
    Conekta.api_version = "1.0.0"
    Conekta.api_key     = "1tv5yJp3xnVZ7eK67m4h"
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
