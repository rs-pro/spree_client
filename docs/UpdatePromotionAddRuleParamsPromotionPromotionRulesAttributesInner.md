# SpreeClient::UpdatePromotionAddRuleParamsPromotionPromotionRulesAttributesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Set the Promotion Rule type. | [optional] |
| **preferred_country_id** | **Integer** | Each rule type has its own preferred attributes. In this example we are setting the ID of the Country this rule applies to. To learn more about Spree preferences visit TODO: [LINK]. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionAddRuleParamsPromotionPromotionRulesAttributesInner.new(
  type: Spree::Promotion::Rules::Country,
  preferred_country_id: 122
)
```

