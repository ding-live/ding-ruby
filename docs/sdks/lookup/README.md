# Lookup


## Overview

Retrieve up-to-date metadata about a specific phone number

### Available Operations

* [lookup](#lookup) - Perform a phone number lookup

## lookup

Perform a phone number lookup

### Example Usage

```ruby
require_relative ding_sdk


s = ::DingSDK::Ding.new
s.config_security(
  security=Shared::Security.new(
    api_key="YOUR_API_KEY",
  )
)

    
res = s.lookup.lookup(customer_uuid="6e93aa15-9177-4d09-8395-b69ce50db1c8", phone_number="string")

if ! res.lookup_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `customer_uuid`    | *String*           | :heavy_check_mark: | N/A                |
| `phone_number`     | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::LookupResponse)](../../models/operations/lookupresponse.md)**

