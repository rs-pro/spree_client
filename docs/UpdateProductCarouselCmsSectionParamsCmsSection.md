# SpreeClient::UpdateProductCarouselCmsSectionParamsCmsSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Change this section name. | [optional] |
| **type** | **String** | Change the section type. | [optional] |
| **position** | **Integer** | Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **linked_resource_id** | **String** | Update the ID of the Taxon that you would like displayed as a Product Carousel. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateProductCarouselCmsSectionParamsCmsSection.new(
  name: null,
  type: Spree::Cms::Sections::ProductCarousel,
  position: 2,
  linked_resource_id: 1
)
```

