# SpreeClient::CreateStockItemParamsStockItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **String** |  |  |
| **stock_location_id** | **String** |  |  |
| **count_on_hand** | **Float** |  |  |
| **backorderable** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateStockItemParamsStockItem.new(
  variant_id: 2,
  stock_location_id: 2,
  count_on_hand: 200,
  backorderable: true
)
```

