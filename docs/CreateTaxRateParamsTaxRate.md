# SpreeClient::CreateTaxRateParamsTaxRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  |  |
| **zone_id** | **String** |  | [optional] |
| **tax_category_id** | **String** |  |  |
| **included_in_price** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **show_rate_in_label** | **Boolean** |  | [optional] |
| **calculator_attributes** | [**CreateTaxRateParamsTaxRateCalculatorAttributes**](CreateTaxRateParamsTaxRateCalculatorAttributes.md) |  |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateTaxRateParamsTaxRate.new(
  amount: 0.05,
  zone_id: 2,
  tax_category_id: 1,
  included_in_price: true,
  name: California,
  show_rate_in_label: false,
  calculator_attributes: null
)
```

