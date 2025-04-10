# Conekta::ChargeRequestPaymentMethod

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'conekta'

Conekta::ChargeRequestPaymentMethod.openapi_one_of
# =>
# [
#   :'PaymentMethodBnplRequest',
#   :'PaymentMethodCardRequest',
#   :'PaymentMethodGeneralRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'conekta'

Conekta::ChargeRequestPaymentMethod.build(data)
# => #<PaymentMethodBnplRequest:0x00007fdd4aab02a0>

Conekta::ChargeRequestPaymentMethod.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentMethodBnplRequest`
- `PaymentMethodCardRequest`
- `PaymentMethodGeneralRequest`
- `nil` (if no type matches)

