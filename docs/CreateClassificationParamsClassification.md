# SpreeClient::CreateClassificationParamsClassification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **taxon_id** | **String** |  |  |
| **position** | **Integer** |  |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateClassificationParamsClassification.new(
  product_id: 1,
  taxon_id: 1,
  position: 1
)
```

