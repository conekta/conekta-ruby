![README Cover Image](readme_cover.png)
<div align="center">

# Conekta Ruby v.2.4.0

[![Made with Ruby](https://img.shields.io/badge/made%20with-ruby-red.svg?style=for-the-badge&colorA=ED4040&colorB=C12C2D)](https://www.ruby-lang.org) [![By Conekta](https://img.shields.io/badge/by-conekta-red.svg?style=for-the-badge&colorA=ee6130&colorB=00a4ac)](https://conekta.com)
</div>

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
rescue Conekta::Error => error
  for error_detail in error.details do
    puts error_detail.message
  end
end

{
  "livemode": false,
  "amount": 35000,
  "payment_status": "pending_payment",
  "currency": "MXN",
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

## License

Developed in Mexico by [Conekta](https://www.conekta.com) in. Available with [MIT License](LICENSE).

***

## How to contribute to the project

1. Fork the repository
 
2. Clone the repository
```
    git clone git@github.com:yourUserName/conekta-ruby.git
```
3. Create a branch
```
    git checkout develop
    git pull origin develop
    # You should choose the name of your branch
    git checkout -b <feature/my_branch>
```    
4. Make necessary changes and commit those changes
```
    git add .
    git commit -m "my changes"
```
5. Push changes to GitHub
```
    git push origin <feature/my_branch>
```
6. Submit your changes for review, create a pull request

   To create a pull request, you need to have made your code changes on a separate branch. This branch should be named like this: **feature/my_feature** or **fix/my_fix**.

   Make sure that, if you add new features to our library, be sure that corresponding **unit tests** are added.

   If you go to your repository on GitHub, you’ll see a Compare & pull request button. Click on that button.

***

## We are always hiring!

If you are a comfortable working with a range of backend languages (Java, Python, Ruby, PHP, etc) and frameworks, you have solid foundation in data structures, algorithms and software design with strong analytical and debugging skills, check our open positions: https://www.conekta.com/careers
