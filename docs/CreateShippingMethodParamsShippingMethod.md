# SpreeClient::CreateShippingMethodParamsShippingMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **admin_name** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **tracking_url** | **String** |  | [optional] |
| **display_on** | **String** |  |  |
| **tax_category_id** | **String** |  | [optional] |
| **shipping_category_ids** | **Array&lt;String&gt;** |  |  |
| **calculator_attributes** | [**ShippingCalculatorParams**](ShippingCalculatorParams.md) |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateShippingMethodParamsShippingMethod.new(
  name: DHL Express,
  admin_name: DHL Area Code D,
  code: DHL-A-D,
  tracking_url: dhlexpress.com?tracking&#x3D;,
  display_on: both,
  tax_category_id: 1,
  shipping_category_ids: null,
  calculator_attributes: null,
  public_metadata: null,
  private_metadata: null
)
```

