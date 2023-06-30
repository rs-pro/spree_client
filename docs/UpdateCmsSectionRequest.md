# SpreeClient::UpdateCmsSectionRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'spree_client'

SpreeClient::UpdateCmsSectionRequest.openapi_one_of
# =>
# [
#   :'UpdateFeaturedArticleCmsSectionParams',
#   :'UpdateHeroImageCmsSectionParams',
#   :'UpdateImageGalleryCmsSectionParams',
#   :'UpdateProductCarouselCmsSectionParams',
#   :'UpdateRichTextCmsSectionParams',
#   :'UpdateSideBySideImagesCmsSectionParams'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'spree_client'

SpreeClient::UpdateCmsSectionRequest.build(data)
# => #<UpdateFeaturedArticleCmsSectionParams:0x00007fdd4aab02a0>

SpreeClient::UpdateCmsSectionRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `UpdateFeaturedArticleCmsSectionParams`
- `UpdateHeroImageCmsSectionParams`
- `UpdateImageGalleryCmsSectionParams`
- `UpdateProductCarouselCmsSectionParams`
- `UpdateRichTextCmsSectionParams`
- `UpdateSideBySideImagesCmsSectionParams`
- `nil` (if no type matches)

