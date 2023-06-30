# SpreeClient::CreateStockLocationParamsStockLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **default** | **Boolean** |  | [optional] |
| **address1** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **country_id** | **String** |  | [optional] |
| **state_id** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state_name** | **String** |  | [optional] |
| **zipcode** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **backorderable_default** | **Boolean** |  | [optional] |
| **propagate_all_variants** | **Boolean** |  | [optional] |
| **admin_name** | **String** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateStockLocationParamsStockLocation.new(
  name: Warehouse 3,
  default: null,
  address1: South St. 8,
  address2: South St. 109,
  country_id: 2,
  state_id: 4,
  city: Los Angeles,
  state_name: California,
  zipcode: 90005,
  phone: 23333456,
  active: null,
  backorderable_default: null,
  propagate_all_variants: null,
  admin_name: null
)
```

