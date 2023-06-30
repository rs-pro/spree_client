# SpreeClient::UpdateAddressParamsAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_id** | **String** |  | [optional] |
| **state_id** | **String** |  | [optional] |
| **state_name** | **String** |  | [optional] |
| **address1** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **zipcode** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **alternative_phone** | **String** |  | [optional] |
| **firstname** | **String** |  | [optional] |
| **lastname** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateAddressParamsAddress.new(
  country_id: 224,
  state_id: 516,
  state_name: New York,
  address1: 5th ave,
  address2: 1st suite,
  city: NY,
  zipcode: 10001,
  phone: +1 123 456 789,
  alternative_phone: null,
  firstname: John,
  lastname: Snow,
  label: My home address,
  company: Vendo Cloud Inc,
  user_id: null,
  public_metadata: {&quot;distance_from_city_in_km&quot;:10,&quot;location_type&quot;:&quot;building&quot;},
  private_metadata: {&quot;close_to_shop&quot;:true}
)
```

