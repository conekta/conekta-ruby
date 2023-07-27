# Conekta::LogsResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **loggable_id** | **String** |  | [optional] |
| **loggable_type** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **oauth_token_id** | **String** |  | [optional] |
| **query_string** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **related** | **String** |  | [optional] |
| **request_body** | **Object** |  | [optional] |
| **request_headers** | **Hash&lt;String, String&gt;** |  | [optional] |
| **response_body** | **Object** |  | [optional] |
| **response_headers** | **Hash&lt;String, String&gt;** |  | [optional] |
| **searchable_tags** | **Array&lt;String&gt;** |  | [optional] |
| **status** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **user_account_id** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::LogsResponseData.new(
  created_at: 1661445644,
  id: 6307a60c41de27127515a575,
  ip_address: 54.235.131.48,
  livemode: true,
  loggable_id: ord_87632467832,
  loggable_type: order,
  method: POST,
  oauth_token_id: null,
  query_string: {amount&#x3D;3000, payable&#x3D;true},
  related: FilterResource,
  request_body: {filters&#x3D;{amount&#x3D;{amount_from&#x3D;0, amount_to&#x3D;0}, created_at&#x3D;{date_from&#x3D;1653627600, date_to&#x3D;1661489999}, filterName&#x3D;Payments, search_term&#x3D;null, sort_by&#x3D;created_at, sort_direction&#x3D;desc, status&#x3D;[], type&#x3D;[]}, id&#x3D;78e65162-0f37-4942-847c-9bf7081d54c2, page&#x3D;0, report_type&#x3D;charges, testMode&#x3D;false},
  request_headers: {Accept&#x3D;application/vnd.conekta-v2.1.0+json, Accept-Encoding&#x3D;gzip, deflate, br, Accept-Language&#x3D;es-419, es; q&#x3D;0.9, en; q&#x3D;0.8, Activitypermission&#x3D;orders:read, Apiversion&#x3D;2.1.0},
  response_body: null,
  response_headers: {Access-Control-Allow-Headers&#x3D;Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control, X-Prototype-Version, Authorization, Accept, Date, Version, X-Forwarded-For, Host, Connection, X-Forwarded-Proto, X-Forwarded-Port, X-Amzn-Trace-Id, Accept-Encoding, Accept-Language, Referer, Origin, Activitypermission, Apiversion, Entityid, Livemode, Sec-Ch-Ua, Sec-Ch-Ua-Mobile, Sec-Ch-Ua-Platform, Sec-Fetch-Dest, Sec-Fetch-Mode, Sec-Fetch-Site, X-Datadog-Parent-Id, X-Datadog-Sampling-Priority, X-Datadog-Trace-Id, X-Forwarded-Host, X-Forwarded-Server, X-Real-Ip, Access-Control-Allow-Methods&#x3D;POST, GET, PUT, OPTIONS, Access-Control-Allow-Origin&#x3D;*, Access-Control-Max-Age&#x3D;1728000, Conekta-Media-Type&#x3D;conekta-v2.1.0; format&#x3D;application/json, Content-Type&#x3D;application/json; charset&#x3D;utf-8, Referrer-Policy&#x3D;strict-origin-when-cross-origin, Strict-Transport-Security&#x3D;max-age&#x3D;31536000; includeSubDomains, X-Content-Type-Options&#x3D;nosniff, X-Download-Options&#x3D;noopen, X-Frame-Options&#x3D;SAMEORIGIN, X-Permitted-Cross-Domain-Policies&#x3D;none, X-XSS-Protection&#x3D;1; mode&#x3D;block},
  searchable_tags: [6307a60c41de27127515a575, 6307a60c41de27127515a571],
  status: 200,
  updated_at: 2022-08-25T16:40:44.887Z,
  url: /filter_resource,
  user_account_id: 5a0b7001edbb6e1725b0b2c6,
  version: 2.1.0
)
```

