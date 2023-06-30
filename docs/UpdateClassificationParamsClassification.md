# SpreeClient::UpdateClassificationParamsClassification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  | [optional] |
| **taxon_id** | **String** |  | [optional] |
| **position** | **Integer** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateClassificationParamsClassification.new(
  product_id: 1,
  taxon_id: 1,
  position: 1
)
```

