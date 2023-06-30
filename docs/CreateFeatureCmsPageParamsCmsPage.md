# SpreeClient::CreateFeatureCmsPageParamsCmsPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Give your page a title. |  |
| **type** | **String** | Set the type of page. |  |
| **meta_title** | **String** | Set the meta title for this page, this appears in the title bar of the browser. | [optional] |
| **meta_description** | **String** | Set a meta description, used for SEO and displayed in search results. | [optional] |
| **visible** | **Boolean** | This page is publicly visible when set to &#x60;true&#x60;. | [optional] |
| **slug** | **String** | Set a slug for this page. | [optional] |
| **locale** | **String** | The language this page is written in. |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateFeatureCmsPageParamsCmsPage.new(
  title: Featured Product,
  type: null,
  meta_title: Learn More About This Featured Product,
  meta_description: Learn more about us this amazing product that we sell right here...,
  visible: null,
  slug: about-us,
  locale: en-US
)
```

