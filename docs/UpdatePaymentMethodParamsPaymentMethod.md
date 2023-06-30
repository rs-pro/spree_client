# SpreeClient::UpdatePaymentMethodParamsPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **auto_capture** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **display_on** | **String** |  | [optional] |
| **store_ids** | **Array&lt;String&gt;** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePaymentMethodParamsPaymentMethod.new(
  name: Test Payment Method,
  active: null,
  auto_capture: null,
  description: This is a test payment method,
  type: Spree::Gateway::Bogus,
  display_on: both,
  store_ids: null,
  public_metadata: null,
  private_metadata: null
)
```

