# SpreeClient::CreateDigitalLinkParamsDigitalLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_counter** | **Integer** |  | [optional] |
| **line_item_id** | **String** |  |  |
| **digital_id** | **String** |  |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateDigitalLinkParamsDigitalLink.new(
  access_counter: 0,
  line_item_id: 1,
  digital_id: 1
)
```

