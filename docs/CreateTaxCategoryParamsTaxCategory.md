# SpreeClient::CreateTaxCategoryParamsTaxCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **is_default** | **Boolean** |  | [optional] |
| **tax_code** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateTaxCategoryParamsTaxCategory.new(
  name: Clothing,
  is_default: true,
  tax_code: 1257L,
  description: Men&#39;s, women&#39;s and children&#39;s branded clothing
)
```

