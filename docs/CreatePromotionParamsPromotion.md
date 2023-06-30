# SpreeClient::CreatePromotionParamsPromotion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Give the promotion a name. |  |
| **code** | **String** | Set the promotion code. Promotions without a code are automatically applied if the order meets the Promotion Rule requirements. | [optional] |
| **description** | **String** | Give the promotion a description. | [optional] |
| **usage_limit** | **Integer** | If you wish you can set a usage limit for this promotion. | [optional] |
| **advertise** | **Boolean** |  | [optional] |
| **starts_at** | **String** | Set a date and time that this promotion begins. | [optional] |
| **ends_at** | **String** | Set a date and time that this promotion ends. | [optional] |
| **store_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreatePromotionParamsPromotion.new(
  name: Promotions Used in 2021,
  code: BLK-FRI,
  description: Save today with discount code XYZ at checkout.,
  usage_limit: 100,
  advertise: null,
  starts_at: null,
  ends_at: null,
  store_ids: null
)
```

