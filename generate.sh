#!/bin/bash

docker run --rm -v "/data/mecto/spree_client/:/local" openapitools/openapi-generator-cli generate \
                                                -i /local/index.yaml \
                                                -g ruby \
                                                -o /local \
						--library faraday \
						--additional-properties=moduleName=SpreeClient,gemAuthor=glebtv,gemAuthorEmail=glebtv@gmail.com,gemLicense=MIT,gemName=spree_client
