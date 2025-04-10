# Conekta::PaymentMethodTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of payment method |  |
| **token_id** | **String** | Token id that will be used to create a \&quot;card\&quot; type payment method. See the (subscriptions)[https://developers.conekta.com/v2.2.0/reference/createsubscription] tutorial for more information on how to tokenize cards. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodTokenRequest.new(
  type: card | cash | spei | bnpl,
  token_id: tok_32hj4g234as
)
```

