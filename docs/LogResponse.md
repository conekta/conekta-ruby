# Conekta::LogResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Integer** |  |  |
| **id** | **String** |  |  |
| **ip_address** | **String** |  | [optional] |
| **livemode** | **Boolean** |  |  |
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

instance = Conekta::LogResponse.new(
  created_at: 1661445644,
  id: 6307a60c41de27127515a575,
  ip_address: 54.235.131.48,
  livemode: true,
  loggable_id: ord_87632467832,
  loggable_type: order,
  method: POST,
  oauth_token_id: null,
  query_string: {&quot;amount&quot;:3000,&quot;payable&quot;:true},
  related: FilterResource,
  request_body: {&quot;filters&quot;:{&quot;amount&quot;:{&quot;amount_from&quot;:0,&quot;amount_to&quot;:0},&quot;created_at&quot;:{&quot;date_from&quot;:1653627600,&quot;date_to&quot;:1661489999},&quot;filterName&quot;:&quot;Payments&quot;,&quot;search_term&quot;:null,&quot;sort_by&quot;:&quot;created_at&quot;,&quot;sort_direction&quot;:&quot;desc&quot;,&quot;status&quot;:[],&quot;type&quot;:[]},&quot;id&quot;:&quot;78e65162-0f37-4942-847c-9bf7081d54c2&quot;,&quot;page&quot;:&quot;0&quot;,&quot;report_type&quot;:&quot;charges&quot;,&quot;testMode&quot;:false},
  request_headers: {&quot;Accept&quot;:&quot;application/vnd.conekta-v2.2.0+json&quot;,&quot;Accept-Encoding&quot;:&quot;gzip, deflate, br&quot;,&quot;Accept-Language&quot;:&quot;es-419, es; q&#x3D;0.9, en; q&#x3D;0.8&quot;,&quot;Activitypermission&quot;:&quot;orders:read&quot;,&quot;Apiversion&quot;:&quot;2.2.0&quot;},
  response_body: null,
  response_headers: {&quot;Access-Control-Allow-Headers&quot;:&quot;Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control, X-Prototype-Version, Authorization, Accept, Date, Version, X-Forwarded-For, Host, Connection, X-Forwarded-Proto, X-Forwarded-Port, X-Amzn-Trace-Id, Accept-Encoding, Accept-Language, Referer, Origin, Activitypermission, Apiversion, Entityid, Livemode, Sec-Ch-Ua, Sec-Ch-Ua-Mobile, Sec-Ch-Ua-Platform, Sec-Fetch-Dest, Sec-Fetch-Mode, Sec-Fetch-Site, X-Datadog-Parent-Id, X-Datadog-Sampling-Priority, X-Datadog-Trace-Id, X-Forwarded-Host, X-Forwarded-Server, X-Real-Ip&quot;,&quot;Access-Control-Allow-Methods&quot;:&quot;POST, GET, PUT, OPTIONS&quot;,&quot;Access-Control-Allow-Origin&quot;:&quot;*&quot;,&quot;Access-Control-Max-Age&quot;:&quot;1728000&quot;,&quot;Conekta-Media-Type&quot;:&quot;conekta-v2.2.0; format&#x3D;application/json&quot;,&quot;Content-Type&quot;:&quot;application/json; charset&#x3D;utf-8&quot;,&quot;Referrer-Policy&quot;:&quot;strict-origin-when-cross-origin&quot;,&quot;Strict-Transport-Security&quot;:&quot;max-age&#x3D;31536000; includeSubDomains&quot;,&quot;X-Content-Type-Options&quot;:&quot;nosniff&quot;,&quot;X-Download-Options&quot;:&quot;noopen&quot;,&quot;X-Frame-Options&quot;:&quot;SAMEORIGIN&quot;,&quot;X-Permitted-Cross-Domain-Policies&quot;:&quot;none&quot;,&quot;X-XSS-Protection&quot;:&quot;1; mode&#x3D;block&quot;},
  searchable_tags: [&quot;6307a60c41de27127515a575&quot;,&quot;6307a60c41de27127515a571&quot;],
  status: 200,
  updated_at: 2022-08-25T16:40:44.887Z,
  url: /filter_resource,
  user_account_id: 5a0b7001edbb6e1725b0b2c6,
  version: 2.2.0
)
```

