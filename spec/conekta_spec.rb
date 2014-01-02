require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
describe :conekta_tests do
  Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h'
  describe :charge_tests do
#    it "get charge" do
#  p "GET CHARGE"
#      charge = Conekta::Charge.get("52bf93a0cfc26cc6b9000071")
#      puts charge
#      puts charge.id
#      puts charge.amount
#      puts charge.payment_method
#    end
#    it "where charge" do
#  p "WHERE CHARGE"
#      charges = Conekta::Charge.where()
#      puts charges.class
#      puts charges
#      puts charges[0].class
#      puts charges[0]
#    end
#    it "create charge" do
#      p "GET CHARGE"
#      charge = Conekta::Charge.create({
#        "currency"=>"MXN",
#        "amount"=> 20000,
#        "description"=>"Stogies",
#        "reference_id"=>"9839-wolf_pack",
#        "card"=> "tok_test_visa_4242"
#      })
#      puts charge
#      puts charge.id
#      puts charge.amount
#      puts charge.payment_method
#    end
#    it "capture charge" do
#      p "CAPTURE CHARGE"
#      charge = Conekta::Charge.create({
#        "currency"=>"MXN",
#        "amount"=> 20000,
#        "description"=>"Stogies",
#        "reference_id"=>"9839-wolf_pack",
#        "capture" => false,
#        "card"=> "tok_test_visa_4242"
#      })
#      puts charge.status
#      begin
#        charge.capture
#        puts charge.status
#      rescue Exception => e
#        p e.message
#      end
#    end
  end
  describe :customer_tests do
#    it "gets a customer" do
#      p "gets a customer"
#      customer = Conekta::Customer.get("cus_eVXwZTpkefmjvmVj8")
#      p customer
#      p customer.cards[0]
#    end
#    it "creates a customer" do
#      p "creates a customer"
#      customer = Conekta::Customer.create({
#        :name => "James Howlett",
#        :email => "james.howlett@forces.gov",
#        :phone => "55-5555-5555",
#        :cards => ["tok_test_visa_4242"],
#        :plan => "gold-plan"
#      })
#      p customer
#    end
#    it "deletes a customer" do
#      p "deletes a customer"
#      customer = Conekta::Customer.create({
#        :name => "James Howlett",
#        :email => "james.howlett@forces.gov",
#        :phone => "55-5555-5555",
#        :cards => ["tok_test_visa_4242"],
#        :plan => "gold-plan"
#      })
#      p customer
#      customer.delete
#      p customer
#      p customer.deleted
#    end
#    it "updates a customer" do
#      p "updates a customer"
#      customer = Conekta::Customer.create({
#        :name => "James Howlett",
#        :email => "james.howlett@forces.gov",
#        :phone => "55-5555-5555",
#        :cards => ["tok_test_visa_4242"],
#        :plan => "gold-plan"
#      })
#      p customer
#      customer.update({
#        :name => "Logan",
#        :email => "logan@x-men.org",
#      })
#      p customer
#    end
#    it "creates a customer card" do
#      p "creates a customer card"
#      customer = Conekta::Customer.create({
#        :name => "James Howlett",
#        :email => "james.howlett@forces.gov",
#        :phone => "55-5555-5555",
#        :cards => ["tok_test_visa_4242"],
#        :plan => "gold-plan"
#      })
#      p customer
#      card = customer.create_card(:token => 'tok_test_visa_1881')
#      p "new customer"
#      p customer
#      card = customer.create_card(:token => 'tok_test_mastercard_4444')
#      p "new customer"
#      p customer
#    end
    it "deletes and creates card" do
      p "deletes and creates card"
      customer = Conekta::Customer.create({
        :name => "James Howlett",
        :email => "james.howlett@forces.gov",
        :phone => "55-5555-5555",
        :cards => ["tok_test_visa_4242"],
        :plan => "gold-plan"
      })
      card = customer.create_card(:token => 'tok_test_visa_1881')
      card = customer.create_card(:token => 'tok_test_mastercard_4444')
      p customer.cards
      p "#0"
      p customer.cards[0]
      p "#1"
      p customer.cards[1]
      p "#2"
      p customer.cards[2]
      p "delete"
      p customer.cards[0].delete
      p "#0"
      p customer.cards[0]
      p "delete"
      p customer.cards[0].delete
      p "#0"
      p customer.cards[0]
      p "delete"
      p customer.cards[0].delete
      p "#0"
      p customer.cards[0]
      p customer.cards.class
    end
  end

end
