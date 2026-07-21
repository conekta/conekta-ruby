# Conekta::CustomerPortalResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | Unique slug identifier for the portal | [optional] |
| **subscription_id** | **String** | Associated subscription ID | [optional] |
| **customer_id** | **String** | Associated customer ID | [optional] |
| **livemode** | **Boolean** | Whether this is a live or test mode portal | [optional] |
| **subscription** | [**SubscriptionDetails**](SubscriptionDetails.md) |  | [optional] |
| **customer** | [**CustomerDetails**](CustomerDetails.md) |  | [optional] |
| **id** | **String** | Customer portal ID | [optional] |
| **company_id** | **String** | Associated company ID | [optional] |
| **object** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation | [optional] |
| **updated_at** | **Integer** | Unix timestamp of last update | [optional] |
| **portal_url** | **String** | URL to access the customer portal | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerPortalResponse.new(
  slug: agIvD4QSBl4Nunq4TmuozMw2ThtyVC,
  subscription_id: sub_2yYsQuYtXAbP1fdYu,
  customer_id: cus_2yDzKtEAD3khH8Sga,
  livemode: false,
  subscription: null,
  customer: null,
  id: scp_2ym7QbU9dTh7Froti,
  company_id: 63dad459920de10001d177b3,
  object: customer_portal,
  created_at: 1759108828,
  updated_at: 1759108828,
  portal_url: https://pay.stg.conekta.io/subscription/management/agIvD4QSBl4Nunq4TmuozMw2ThtyVC
)
```

