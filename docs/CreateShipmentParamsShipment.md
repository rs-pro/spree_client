# SpreeClient::CreateShipmentParamsShipment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_location_id** | **String** |  |  |
| **order_id** | **String** |  |  |
| **variant_id** | **String** |  |  |
| **quantity** | **Integer** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateShipmentParamsShipment.new(
  stock_location_id: 101,
  order_id: 101,
  variant_id: 101,
  quantity: 2
)
```

