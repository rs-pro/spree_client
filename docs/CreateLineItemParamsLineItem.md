# SpreeClient::CreateLineItemParamsLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **variant_id** | **String** |  |  |
| **quantity** | **Integer** |  |  |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateLineItemParamsLineItem.new(
  order_id: 1,
  variant_id: 1,
  quantity: 2,
  public_metadata: null,
  private_metadata: null
)
```

