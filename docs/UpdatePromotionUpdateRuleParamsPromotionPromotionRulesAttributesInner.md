# SpreeClient::UpdatePromotionUpdateRuleParamsPromotionPromotionRulesAttributesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | To update an existing Promotion Rule, you are required to pass the ID of the rule you are updating. | [optional] |
| **type** | **String** | Set the Promotion Rule type. | [optional] |
| **preferred_country_id** | **Integer** | Each rule type has its own preferred attributes. In this example we are changing the ID of the Country this rule applies to. To learn more about Spree preferences visit TODO: [LINK]. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionUpdateRuleParamsPromotionPromotionRulesAttributesInner.new(
  id: 22,
  type: Spree::Promotion::Rules::Country,
  preferred_country_id: 143
)
```

