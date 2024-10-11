# Conekta::CreateCustomerPaymentMethodsRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'conekta'

Conekta::CreateCustomerPaymentMethodsRequest.openapi_one_of
# =>
# [
#   :'PaymentMethodCashRequest',
#   :'PaymentMethodSpeiRequest',
#   :'PaymentMethodTokenRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'conekta'

Conekta::CreateCustomerPaymentMethodsRequest.build(data)
# => #<PaymentMethodCashRequest:0x00007fdd4aab02a0>

Conekta::CreateCustomerPaymentMethodsRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentMethodCashRequest`
- `PaymentMethodSpeiRequest`
- `PaymentMethodTokenRequest`
- `nil` (if no type matches)

