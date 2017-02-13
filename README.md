![alt tag](https://raw.github.com/conekta/conekta-ruby/master/readme_files/cover.png)

# Conekta Ruby v.1.1.3

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
  c.api_version = '2.0.0'
end

begin
  order = Conekta::Order.create(order_data_with_charges.
          merge(customer_info: customer_info))
rescue Conekta::ErrorList => error_list
  for error_detail in error_list.details do
    puts error_detail.message
  end
end

{
  "livemode": false,
  "amount": 35000,
  "status": "created",
  "currency": "MXN",
  "capture": true,
  "last_payment_info": {
    "charge_id": "5887772aedbb6ea3a30056c5",
    "payment_method": "OxxoPayment",
    "status": "pending_payment"
  },
  "customer_info": {
    "email": "hola@hola.com",
    "phone": "+5213353319758",
    "name": "John Constantine",
    "first_paid_at": 0
  },
  "object": "order",
  "id": "ord_2ftyJuymR9FZczvPg",
  "metadata": {
    "test": true
  },
  "created_at": 1485272874,
  "updated_at": 1485272874,
  "line_items": {
    "0": {
      "name": "Box of Cohiba S1s",
      "description": "Imported From Mex.",
      "unit_price": 35000,
      "quantity": 1,
      "tags": ["food", "mexican food"],
      "type": "physical",
      "object": "line_item",
      "id": "line_item_2ftyJuymR9FZczvPe",
      "parent_id": "ord_2ftyJuymR9FZczvPg",
      "metadata": {}
    }
  },
  "charges": {
    "0": {
      "id": "5887772aedbb6ea3a30056c5",
      "livemode": false,
      "created_at": 1485272874,
      "currency": "MXN",
      "payment_method": {
        "barcode_url": "https://s3.amazonaws.com/cash_payment_barcodes/sandbox_reference.png",
        "service_name": "OxxoPay",
        "object": "cash_payment",
        "type": "oxxo",
        "expires_at": 1485276473,
        "store_name": "OXXO",
        "reference": "93345678901234"
      },
      "object": "charge",
      "status": "pending_payment",
      "amount": 35000,
      "fee": 1421,
      "customer_id": "",
      "order_id": "ord_2ftyJuymR9FZczvPg"
    }
  }
}
```

License
-------
Developed by [Conekta](https://www.conekta.io). Available with [MIT License](LICENSE).

Development and Testing
-----------------------
Feel free to play with our library and make pull requests if you find any bugs.  You can run the test suite with rspec from the library's root directory:

```shell
bundle exec rspec
```

To facilitate the development and testing process you can use one our ruby docker, docker preloaded with rvm and ruby versions 1.9.3, 2.1.9, 2.2.4 and 2.3.0:

```shell
docker pull conekta/conekta-ruby

docker run -ti conekta/conekta-ruby /bin/bash --login
```

We are hiring
-------------

If you are a comfortable working with a range of backend languages (Java, Python, Ruby, PHP, etc) and frameworks, you have solid foundation in data structures, algorithms and software design with strong analytical and debugging skills.
Send your CV, github to quieroser@conekta.io
