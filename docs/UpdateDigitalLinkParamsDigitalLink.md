# SpreeClient::UpdateDigitalLinkParamsDigitalLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_counter** | **Integer** |  | [optional] |
| **line_item_id** | **String** |  | [optional] |
| **digital_id** | **String** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateDigitalLinkParamsDigitalLink.new(
  access_counter: 0,
  line_item_id: 1,
  digital_id: 1
)
```

