# Conekta

This is a ruby library that allows interaction with https://api.conekta.io API.

## Installation

Add this line to your application's Gemfile:

    gem 'conekta'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install conekta

## Usage
    # This change the Accept-Language Header to the locale specified
    Conekta.locale = :es
    
    Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h'
    @my_card = {number: '4242424242424242', exp_month: 5, exp_year: 2015, cvc: 123, name: 'Mario Moreno'}
    begin
      charge = Conekta::Charge.create({card: @my_card, description: 'Some desc', amount: 2000, currency: 'mxn'})
      p charge
    rescue Conekta::Error
      # Catch all exceptions including validation errors.
      e.message
      
      # Error message translated
      e.message_to_purchaser
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
