# SpreeClient::CreateSideBySideImagesCmsSectionParamsCmsSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Give this section a name. |  |
| **cms_page_id** | **String** | Set the &#x60;cms_page&#x60; ID that this section belongs to. |  |
| **type** | **String** | Set the section type. |  |
| **position** | **Integer** | Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **link_type_one** | **String** | Set the resource type that image one links to. | [optional] |
| **link_type_two** | **String** | Set the resource type that image two links to. | [optional] |
| **link_one** | **String** | Set the slug or path that image two links to. | [optional] |
| **link_two** | **String** | Set the slug or path that image two links to. | [optional] |
| **title_one** | **String** | Set the title used in image one. | [optional] |
| **title_two** | **String** | Set the title used in image two. | [optional] |
| **fit** | **String** | This value is used by front end developers to set CSS classes for content that fits the screen edge-to-edge, or stays within the boundaries of the central container. | [optional] |
| **subtitle_one** | **String** | Set the subtitle used in image one. | [optional] |
| **subtitle_two** | **String** | Set the subtitle used in image two. | [optional] |
| **gutters** | **String** | This value is used by front end developers for styling the section padding. | [optional] |
| **cms_section_image_one** | **File** | Use a &#x60;multipart/form-data&#x60; request to upload assets. | [optional] |
| **cms_section_image_two** | **File** | Use a &#x60;multipart/form-data&#x60; request to upload assets. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateSideBySideImagesCmsSectionParamsCmsSection.new(
  name: null,
  cms_page_id: null,
  type: Spree::Cms::Sections::SideBySideImages,
  position: 2,
  link_type_one: Spree::Taxon,
  link_type_two: Spree::Taxon,
  link_one: men/shirts,
  link_two: white-shirt,
  title_one: Shop Men&#39;s Shirts,
  title_two: Buy This Men&#39;s Shirt,
  fit: Screen,
  subtitle_one: Save 50% today,
  subtitle_two: Save 50% today,
  gutters: No Gutters,
  cms_section_image_one: null,
  cms_section_image_two: null
)
```

