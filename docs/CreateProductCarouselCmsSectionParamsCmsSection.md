# SpreeClient::CreateProductCarouselCmsSectionParamsCmsSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Give this section a name. |  |
| **cms_page_id** | **String** | Set the &#x60;cms_page&#x60; ID that this section belongs to. |  |
| **type** | **String** | Set the section type. |  |
| **position** | **Integer** | Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **linked_resource_id** | **String** | Set the ID of the Taxon that you would like displayed as a Product Carousel. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateProductCarouselCmsSectionParamsCmsSection.new(
  name: null,
  cms_page_id: null,
  type: Spree::Cms::Sections::ProductCarousel,
  position: 2,
  linked_resource_id: 1
)
```

