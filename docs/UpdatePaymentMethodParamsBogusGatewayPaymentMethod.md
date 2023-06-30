# SpreeClient::UpdatePaymentMethodParamsBogusGatewayPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preferred_dummy_key** | **String** |  | [optional] |
| **preferred_server** | **String** |  | [optional] |
| **preferred_test_mode** | **Boolean** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePaymentMethodParamsBogusGatewayPaymentMethod.new(
  preferred_dummy_key: UPDATED-DUMMY-KEY-123,
  preferred_server: production,
  preferred_test_mode: null
)
```

