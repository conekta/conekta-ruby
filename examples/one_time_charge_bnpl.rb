# Load the gem
require 'conekta'
class OneTimeChargeBnpl
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
        :quantity => 1
      }
    ],
    :customer_info => {
      :name => 'Mario Hernandez',
      :email => 'mm@gmail.com',
      :phone => '5555555555'
    },
    :charges => [
      {
        :payment_method => Conekta::PaymentMethodBnplRequest.new(
          :expires_at => Time.now.advance(days: 30).to_i,
          :product_type => 'creditea_bnpl',
          :type => 'bnpl',
          :success_url => 'https://www.example.com/success',
          :failure_url => 'https://www.example.com/failure',
          :cancel_url => 'https://www.example.com/cancel'
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
    p result.charges.data[0].payment_method.bnpl_payment.redirect_url
    p result.charges.data[0].payment_method.bnpl_payment.type
  rescue Conekta::ApiError => e
    puts "Exception when calling create order #{e}"
  end
end
