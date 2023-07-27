# Conekta::CustomerPaymentMethodsRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'conekta'

Conekta::CustomerPaymentMethodsRequest.openapi_one_of
# =>
# [
#   :'PaymentMethodCardRequest',
#   :'PaymentMethodCashRequest',
#   :'PaymentMethodSpeiRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'conekta'

Conekta::CustomerPaymentMethodsRequest.build(data)
# => #<PaymentMethodCardRequest:0x00007fdd4aab02a0>

Conekta::CustomerPaymentMethodsRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentMethodCardRequest`
- `PaymentMethodCashRequest`
- `PaymentMethodSpeiRequest`
- `nil` (if no type matches)

