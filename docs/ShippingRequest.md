# Conekta::ShippingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Shipping amount in cents |  |
| **carrier** | **String** | Carrier name for the shipment | [optional] |
| **tracking_number** | **String** | Tracking number can be used to track the shipment | [optional] |
| **method** | **String** | Method of shipment | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Hash where the user can send additional information for each &#39;shipping&#39;. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ShippingRequest.new(
  amount: 100,
  carrier: FEDEX,
  tracking_number: TRACK123,
  method: Same day,
  metadata: {key&#x3D;value}
)
```
