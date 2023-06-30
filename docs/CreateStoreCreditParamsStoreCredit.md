# SpreeClient::CreateStoreCreditParamsStoreCredit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **category_id** | **String** |  |  |
| **created_by_id** | **String** |  |  |
| **amount** | **Float** |  |  |
| **amount_used** | **Float** |  | [optional] |
| **memo** | **String** |  | [optional] |
| **currency** | **String** |  |  |
| **amount_authorized** | **Float** |  | [optional] |
| **originator_id** | **String** |  | [optional] |
| **originator_type** | **String** |  | [optional] |
| **type_id** | **String** |  |  |
| **store_id** | **String** |  |  |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateStoreCreditParamsStoreCredit.new(
  user_id: 2,
  category_id: 4,
  created_by_id: 5,
  amount: 25,
  amount_used: 10,
  memo: This credit was given as a refund,
  currency: USD,
  amount_authorized: 15.5,
  originator_id: 3,
  originator_type: Refund,
  type_id: 1,
  store_id: 2,
  public_metadata: null,
  private_metadata: null
)
```

