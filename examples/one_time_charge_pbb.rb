# Load the gem
require 'conekta'
class OneTimeChargePbb
  Conekta.configure do |config|
    config.access_token = ENV['CONEKTA_API_KEY']
  end

  api_instance = Conekta::OrdersApi.new
  order_request = Conekta::OrderRequest.new(
    :currency => 'MXN',
    :line_items => [
      {
        :name => 'Box of Cohiba S1s',
        :unit_price => 35000,
        :quantity => 1,
        :description => 'Imported From Mex',
      }
    ],
    :customer_info => {
      :name => 'Mario Hernandez',
      :email => 'mm@gmail.com',
      :phone => '5555555555'
    },
    :shipping_lines =>[
    {
        :amount => 0,
        :carrier => 'FEDEX',
        :method => 'FEDEX_GROUND',
      }
    ],
    :shipping_contact => {
      :address => {
        :street1 => 'Calle 123',
        :city => 'Mexico DF',
        :state => 'DF',
        :country => 'MX',
        :postal_code => '00000'
      },
      :receiver => 'Mario Hernandez'
    },
    :charges => [
      {
        :payment_method => Conekta::PaymentMethodPbbRequest.new(
          :product_type => 'bbva_pay_by_bank',
          :type => 'pay_by_bank',
          )
      }
    ]
  )
  opts = {
    accept_language: 'es' # String | Use for knowing which language to use
  }

  begin
    result = api_instance.create_order(order_request, opts)
    p result
    p result.id
    p result.charges.data[0].payment_method.redirect_url
    p result.charges.data[0].payment_method.deep_link
    p result.charges.data[0].payment_method.type
  rescue Conekta::ApiError => e
    puts "Exception when calling create order #{e}"
  end
end
