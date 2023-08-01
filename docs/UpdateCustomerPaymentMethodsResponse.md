# Conekta::UpdateCustomerPaymentMethodsResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'conekta'

Conekta::UpdateCustomerPaymentMethodsResponse.openapi_one_of
# =>
# [
#   :'PaymentMethodCardResponse',
#   :'PaymentMethodCashResponse',
#   :'PaymentMethodSpeiRecurrent'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'conekta'

Conekta::UpdateCustomerPaymentMethodsResponse.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'conekta'

Conekta::UpdateCustomerPaymentMethodsResponse.openapi_discriminator_mapping
# =>
# {
#   :'card' => :'PaymentMethodCardResponse',
#   :'cash' => :'PaymentMethodCashResponse',
#   :'oxxo_recurrent' => :'PaymentMethodCashResponse',
#   :'spei_recurrent' => :'PaymentMethodSpeiRecurrent'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'conekta'

Conekta::UpdateCustomerPaymentMethodsResponse.build(data)
# => #<PaymentMethodCardResponse:0x00007fdd4aab02a0>

Conekta::UpdateCustomerPaymentMethodsResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentMethodCardResponse`
- `PaymentMethodCashResponse`
- `PaymentMethodSpeiRecurrent`
- `nil` (if no type matches)

