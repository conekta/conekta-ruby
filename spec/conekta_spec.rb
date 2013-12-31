require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
describe :conekta_tests do
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
    it "capture charge" do
      p "CAPTURE CHARGE"
      charge = Conekta::Charge.create({
        "currency"=>"MXN",
        "amount"=> 20000,
        "description"=>"Stogies",
        "reference_id"=>"9839-wolf_pack",
        "capture" => false,
        "card"=> "tok_test_visa_4242"
      })
      puts charge.status
      charge.capture
      puts charge.status
    end
  end

end
