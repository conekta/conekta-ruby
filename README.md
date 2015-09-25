![alt tag](https://raw.github.com/conekta/conekta-ruby/master/readme_files/cover.png)

# Conekta Ruby v.0.5.4

This is a ruby library that allows interaction with https://api.conekta.io API.

## Installation

Add this line to your application's Gemfile:

    gem 'conekta'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install conekta

## Usage
```ruby
# Set your configuration variables

# This change the Accept-Language Header to the locale specified
Conekta.locale = :es

Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h'

# Or via an initializer in config/initializers/conekta.rb
Conekta.config do |c|
  c.locale = :es
  c.api_key = '1tv5yJp3xnVZ7eK67m4h'
  c.api_version = '1.0.0'
end

begin
  charge = Conekta::Charge.create({
    amount: 51000,
    currency: "MXN",
    description: "Pizza Delivery",
    reference_id: "orden_de_id_interno",
    card: params[:conektaTokenId] 
    #"tok_a4Ff0dD2xYZZq82d9"
  })
  rescue Conekta::ParameterValidationError => e
    puts e.message 
    #alguno de los parámetros fueron inválidos
  rescue Conekta::ProcessingError => e
    puts e.message 
    #la tarjeta no pudo ser procesada
  rescue Conekta::Error => e
    puts e.message 
    #un error ocurrió que no sucede en el flujo normal de cobros como por ejemplo un auth_key incorrecto
  end
    
  {
    "id": "5286828b8ee31e64b7001739",
    "livemode": false,
    "created_at": 1384546955,
    "status": "paid",
    "currency": "MXN",
    "description": "Some desc",
    "reference_id": null,
    "failure_code": null,
    "failure_message": null,
    "object": "charge",
    "amount": 2000,
    "fee": 371,
    "payment_method": {
      "name": "Mario Moreno",
      "exp_month": "05",
      "exp_year": "15",
      "auth_code": "861491",
      "object": "card_payment",
      "last4": "4242",
      "brand": "visa"
    },
    "details": {
      "name": null,
      "phone": null,
      "email": null,
      "line_items": []
    }
  }
```

License
-------
Developed by [Conekta](https://www.conekta.io). Available with [MIT License](LICENSE).

We are hiring
-------------

If you are a comfortable working with a range of backend languages (Java, Python, Ruby, PHP, etc) and frameworks, you have solid foundation in data structures, algorithms and software design with strong analytical and debugging skills. 
Send your CV, github to quieroser@conekta.io

