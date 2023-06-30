#!/bin/bash

docker run --rm -v "/data/mecto/spree_platform_api_client/:/local" openapitools/openapi-generator-cli generate \
                                                -i /local/index.yaml \
                                                -g ruby \
                                                -o /local/ruby \
						--additional-properties=moduleName=SpreeClient,gemAuthor=glebtv,gemAuthorEmail=glebtv@gmail.com,gemLicense=MIT,gemName=spree_client,library=faraday
