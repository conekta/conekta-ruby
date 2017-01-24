require 'spec_helper'

describe Conekta::Payout do
  include_context "API 1.0.0"
  let(:payee_attributes) do
    {
      name: "John Doe", email: "j_d@radcorp.com", phone: "555555555",
      billing_address:{
        company_name: 'Rad Corp',
        tax_id: 'tax121212abc',
        street1: 'Guadalupe 73',
        street2: 'Despacho 32',
        street3: 'Condesa',
        city: 'Cuauhtemoc',
        state: 'DF',
        country: 'MX',
        zip: '06100'
      }
    }
  end

  let(:bank_attributes) do
    {
      account_number: '032180000118359719',
      account_holder: 'J D - Radcorp',
      description: 'Conekta To JD',
      statement_description: 'Conekta To JD 111111111',
      statement_reference: '111111111'
    }
  end

  describe 'an instance' do
    before do
      payee = Conekta::Payee.create(payee_attributes)
      payout_method = payee.create_payout_method(bank_attributes)

      @payee = Conekta::Payee.find(payee.id)
    end

    it 'is created successfully' do
      payout = Conekta::Payout.create(
        amount: 5000, currency: "MXN", payee: @payee.id
      )
      expect(payout).to be_a(Conekta::Payout)
    end

    it 'can be retrieved by :id' do
      transaction = Conekta::Payout.create(
        amount: 5000, currency: "MXN", payee: @payee.id
      )
      # refetch payout
      payout = Conekta::Payout.find(transaction.id)
      expect(payout).to be_a(Conekta::Payout)
    end

    it 'has a :method attribute' do
      expect(@payee.payout_methods.first).to be_a(Conekta::Method)
    end
  end
end
