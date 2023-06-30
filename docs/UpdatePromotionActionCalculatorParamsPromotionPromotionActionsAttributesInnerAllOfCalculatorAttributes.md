# SpreeClient::UpdatePromotionActionCalculatorParamsPromotionPromotionActionsAttributesInnerAllOfCalculatorAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | To update an existing Action Calculator, you are required to pass the ID of the calculator. | [optional] |
| **type** | **String** | Set the Type of Promotion Action you wish to use. | [optional] |
| **preferred_flat_percent** | **Integer** | In this example we are setting the preferred flat percentage to &#x60;10&#x60;. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionActionCalculatorParamsPromotionPromotionActionsAttributesInnerAllOfCalculatorAttributes.new(
  id: 19,
  type: Spree::Promotion::Actions::CreateAdjustment,
  preferred_flat_percent: 10
)
```

