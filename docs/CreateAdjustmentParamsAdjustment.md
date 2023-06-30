# SpreeClient::CreateAdjustmentParamsAdjustment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **label** | **String** |  |  |
| **adjustable_id** | **String** |  |  |
| **adjustable_type** | **String** |  |  |
| **source_id** | **String** |  | [optional] |
| **source_type** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **mandatory** | **Boolean** |  | [optional] |
| **eligible** | **Boolean** |  | [optional] |
| **state** | **String** |  | [optional][default to &#39;open&#39;] |
| **included** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateAdjustmentParamsAdjustment.new(
  order_id: null,
  label: Shipping costs,
  adjustable_id: null,
  adjustable_type: Spree::LineItem,
  source_id: null,
  source_type: Spree::TaxRate,
  amount: 10.9,
  mandatory: null,
  eligible: null,
  state: closed,
  included: true
)
```

