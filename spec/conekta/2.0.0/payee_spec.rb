require 'spec_helper'
# require 'conekta'

describe Conekta::Payee do
  include_context "API 2.0.0"

  describe 'an instance' do
    let(:payee_attributes) do
      {
        name: "John Doe", email: "j_d@radcorp2.com", phone: "555555555",
        billing_address:{
          company_name: 'Rad Corp',
          tax_id: 'tax121212abc',
          street1: 'Guadalupe 73',
          street2: 'Despacho 32',
          street3: 'Condesa',
          city: 'Cuauhtemoc',
          state: 'DF',
          country: 'MX',
          postal_code: '06100'
        }
      }
    end

    it 'creates successfully' do
      payee = Conekta::Payee.create(payee_attributes)
      expect(payee).to be_a(Conekta::Payee)
    end

    describe ':payout_methods' do
      let!(:payee) { Conekta::Payee.create(payee_attributes) }
      let(:bank_attributes) do
        {
          type: "bank_account",
          account_number: '072225008217746674',
          account_holder_name: 'J D - Radcorp'
        }
      end

      it 'can create payout methods' do
        payout_method = payee.create_destination(bank_attributes)
        expect(payout_method).to be_a(Conekta::Destination)
        # I'm sure this should be a Conekta::PayoutMethod,
        # just not sure why it's reporting back as a Conekta::Method
      end

      it 'assigns default_payout_method_id to first payout method created' do
        payout_method = payee.create_destination(bank_attributes)
        # refetch the payee object
        payee = Conekta::Payee.find(payout_method.payee_id)
        expect(payee.default_destination_id).to eq(payout_method.id)
      end
    end
  end
end
