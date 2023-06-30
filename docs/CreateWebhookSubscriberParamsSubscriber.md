# SpreeClient::CreateWebhookSubscriberParamsSubscriber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional][default to false] |
| **subscriptions** | **Array&lt;String&gt;** |  | [optional] |
| **url** | **String** |  |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateWebhookSubscriberParamsSubscriber.new(
  active: true,
  subscriptions: [&quot;order.created&quot;,&quot;order.completed&quot;,&quot;product.updated&quot;],
  url: https://www.url.com/
)
```

