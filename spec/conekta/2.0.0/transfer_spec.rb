require 'spec_helper'

describe Conekta::Payout do
  include_context "API 2.0.0"

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
      type: "bank_account",
      account_number: '072225008217746674',
      account_holder_name: 'J D - Radcorp'
    }
  end

  describe 'an instance' do
    before do
      payee = Conekta::Payee.create(payee_attributes)
      payout_method = payee.create_destination(bank_attributes)

      @payee = Conekta::Payee.find(payee.id)
    end

    it 'is created successfully' do
      payout = Conekta::Transfer.create(
        amount: 5000, currency: "MXN", payee: @payee.id
      )
      expect(payout).to be_a(Conekta::Transfer)
    end

    it 'can be retrieved by :id' do
      transaction = Conekta::Transfer.create(
        amount: 5000, currency: "MXN", payee: @payee.id
      )
      # refetch payout
      payout = Conekta::Transfer.find(transaction.id)
      expect(payout).to be_a(Conekta::Transfer)
    end

    it 'has a :method attribute' do
      expect(@payee.destinations.first).to be_a(Conekta::Destination)
    end
  end
end
