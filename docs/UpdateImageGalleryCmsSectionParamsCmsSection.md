# SpreeClient::UpdateImageGalleryCmsSectionParamsCmsSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Update this section name. | [optional] |
| **type** | **String** | Change the section type. | [optional] |
| **position** | **Integer** | Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **link_type_one** | **String** | Update the resource type that image one links to. | [optional] |
| **link_type_two** | **String** | Update the resource type that image two links to. | [optional] |
| **link_type_three** | **String** | Update the resource type that image three links to. | [optional] |
| **link_one** | **String** | Update the slug or path that image two links to. | [optional] |
| **link_two** | **String** | Update the slug or path that image two links to. | [optional] |
| **link_three** | **String** | Update the slug or path that image three links to. | [optional] |
| **title_one** | **String** | Update the title used in image one. | [optional] |
| **title_two** | **String** | Update the title used in image two. | [optional] |
| **title_three** | **String** | Update the title used in image three. | [optional] |
| **fit** | **String** | This value is used by front end developers to set CSS classes for content that fits the screen edge-to-edge, or stays within the boundaries of the central container. | [optional] |
| **layout_style** | **String** | This value is used by front end developers for styling the order the images appear. | [optional] |
| **display_labels** | **String** | This value is used by front end developers for showing and hiding the label on the images. | [optional] |
| **cms_section_image_one** | **File** | Use a &#x60;multipart/form-data&#x60; request to upload assets. | [optional] |
| **cms_section_image_two** | **File** | Use a &#x60;multipart/form-data&#x60; request to upload assets. | [optional] |
| **cms_section_image_three** | **File** | Use a &#x60;multipart/form-data&#x60; request to upload assets. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateImageGalleryCmsSectionParamsCmsSection.new(
  name: null,
  type: Spree::Cms::Sections::ProductCarousel,
  position: 2,
  link_type_one: Spree::Taxon,
  link_type_two: Spree::Taxon,
  link_type_three: Spree::Taxon,
  link_one: men/shirts,
  link_two: white-shirt,
  link_three: red-shirt,
  title_one: Shop Men&#39;s Shirts,
  title_two: Buy This Men&#39;s Shirt,
  title_three: Buy This Women&#39;s Skirt,
  fit: Screen,
  layout_style: Default,
  display_labels: Show,
  cms_section_image_one: null,
  cms_section_image_two: null,
  cms_section_image_three: null
)
```

