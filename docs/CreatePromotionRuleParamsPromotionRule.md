# SpreeClient::CreatePromotionRuleParamsPromotionRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **promotion_id** | **String** | Set the ID of the promotion this Promotion Rule belongs to. |  |
| **type** | **String** | Set the Promotion Rule type. |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreatePromotionRuleParamsPromotionRule.new(
  promotion_id: 22,
  type: Spree::Promotion::Rules::Country
)
```

