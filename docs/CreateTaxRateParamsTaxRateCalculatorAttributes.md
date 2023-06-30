# SpreeClient::CreateTaxRateParamsTaxRateCalculatorAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **preferences** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateTaxRateParamsTaxRateCalculatorAttributes.new(
  type: Spree::Calculator::FlatRate,
  preferences: {&quot;amount&quot;:0,&quot;currency&quot;:&quot;USD&quot;}
)
```

