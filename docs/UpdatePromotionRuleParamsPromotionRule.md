# SpreeClient::UpdatePromotionRuleParamsPromotionRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Set the Promotion Rule type. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionRuleParamsPromotionRule.new(
  type: Spree::Promotion::Rules::Country
)
```

