# SpreeClient::CreateStandardCmsPageParamsCmsPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Give your page a title. |  |
| **type** | **String** | Set the type of page. |  |
| **meta_title** | **String** | Set the meta title for this page, this appears in the title bar of the browser. | [optional] |
| **content** | **String** | The text content of a standard page, this can be HTML from a rich text editor. | [optional] |
| **meta_description** | **String** | Set a meta description, used for SEO and displayed in search results. | [optional] |
| **visible** | **Boolean** | This page is publicly visible when set to &#x60;true&#x60;. | [optional] |
| **slug** | **String** | Set a slug for this page. | [optional] |
| **locale** | **String** | The language this page is written in. |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateStandardCmsPageParamsCmsPage.new(
  title: About Us,
  type: null,
  meta_title: Learn More About Super-Shop,
  content: Lot&#39;s of text..,
  meta_description: Learn more about us on this page here...,
  visible: null,
  slug: about-us,
  locale: en-US
)
```

