# SpreeClient::CreateOrderParamsOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_total** | **Float** |  | [optional] |
| **total** | **Float** |  | [optional] |
| **state** | **String** |  | [optional] |
| **adjustment_total** | **Float** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **completed_at** | **String** |  | [optional] |
| **bill_address_id** | **String** |  | [optional] |
| **ship_address_id** | **String** |  | [optional] |
| **payment_total** | **Float** |  | [optional] |
| **shipment_state** | **String** |  | [optional] |
| **payment_state** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **special_instructions** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **last_ip_address** | **String** |  | [optional] |
| **created_by_id** | **String** |  | [optional] |
| **shipment_total** | **Float** |  | [optional] |
| **additional_tax_total** | **Float** |  | [optional] |
| **promo_total** | **Float** |  | [optional] |
| **channel** | **String** |  | [optional] |
| **included_tax_total** | **Float** |  | [optional] |
| **item_count** | **Integer** |  | [optional] |
| **approver_id** | **String** |  | [optional] |
| **approved_at** | **String** |  | [optional] |
| **confirmation_delivered** | **Boolean** |  | [optional][default to false] |
| **considered_risky** | **Boolean** |  | [optional][default to false] |
| **canceled_at** | **String** |  | [optional] |
| **canceler_id** | **String** |  | [optional] |
| **taxable_adjustment_total** | **Float** |  | [optional] |
| **non_taxable_adjustment_total** | **Float** |  | [optional] |
| **store_owner_notification_delivered** | **Boolean** |  | [optional][default to false] |
| **bill_address_attributes** | [**UpdateAddressParams**](UpdateAddressParams.md) |  | [optional] |
| **ship_address_attributes** | [**UpdateAddressParams**](UpdateAddressParams.md) |  | [optional] |
| **line_items_attributes** | [**Array&lt;UpdateLineItemParams&gt;**](UpdateLineItemParams.md) |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateOrderParamsOrder.new(
  item_total: 170.9,
  total: 190.9,
  state: complete,
  adjustment_total: 20,
  user_id: 1,
  completed_at: 2022-11-08 19:33:50 UTC,
  bill_address_id: 1,
  ship_address_id: 1,
  payment_total: 190.9,
  shipment_state: shipped,
  payment_state: paid,
  email: hi@getvendo.com,
  special_instructions: I need it ASAP!,
  currency: USD,
  last_ip_address: 127.0.0.1,
  created_by_id: 1,
  shipment_total: 10,
  additional_tax_total: 10,
  promo_total: 0,
  channel: online,
  included_tax_total: 0,
  item_count: 2,
  approver_id: null,
  approved_at: 2022-11-08 19:33:50 UTC,
  confirmation_delivered: true,
  considered_risky: true,
  canceled_at: null,
  canceler_id: null,
  taxable_adjustment_total: 170.9,
  non_taxable_adjustment_total: 10,
  store_owner_notification_delivered: true,
  bill_address_attributes: null,
  ship_address_attributes: null,
  line_items_attributes: null,
  public_metadata: null,
  private_metadata: null
)
```

