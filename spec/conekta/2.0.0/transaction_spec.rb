require 'spec_helper'

describe Conekta::Transaction do
  include_context "API 2.0.0"

  describe 'an instance' do
    it { expect(Conekta::Transaction.all).to be_a(Conekta::List) }

    it 'can be retrieved by :id' do
      transaction = Conekta::Transaction.all.first

      expect(Conekta::Transaction.find(transaction['id'])).to be_a(Conekta::Transaction)
    end
  end
end
