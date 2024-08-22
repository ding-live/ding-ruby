# Otp

## Overview

Send OTP codes to your users using their phone numbers.

### Available Operations

* [check](#check) - Check a code
* [create_authentication](#create_authentication) - Send a code
* [feedback](#feedback) - Send feedback
* [retry](#retry) - Perform a retry

## check

Check a code

### Example Usage

```ruby
require 'ding_sdk'


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
)


req = ::DingSDK::Shared::CreateCheckRequest.new(
  authentication_uuid: "e0e7b0e9-739d-424b-922f-1c2cb48ab077",
  check_code: "123456",
  customer_uuid: "8f1196d5-806e-4b71-9b24-5f96ec052808",
)
    
res = s.otp.check(req)

if ! res.create_check_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                          | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `request`                                                                          | [::DingSDK::Shared::CreateCheckRequest](../../models/shared/createcheckrequest.md) | :heavy_check_mark:                                                                 | The request object to use for the request.                                         |

### Response

**[T.nilable(::DingSDK::Operations::CheckResponse)](../../models/operations/checkresponse.md)**




## create_authentication

Send a code

### Example Usage

```ruby
require 'ding_sdk'


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
)


req = ::DingSDK::Shared::CreateAuthenticationRequest.new(
  customer_uuid: "c9f826e0-deca-41ec-871f-ecd6e8efeb46",
  phone_number: "+1234567890",
)
    
res = s.otp.create_authentication(req)

if ! res.create_authentication_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                            | Type                                                                                                 | Required                                                                                             | Description                                                                                          |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `request`                                                                                            | [::DingSDK::Shared::CreateAuthenticationRequest](../../models/shared/createauthenticationrequest.md) | :heavy_check_mark:                                                                                   | The request object to use for the request.                                                           |

### Response

**[T.nilable(::DingSDK::Operations::CreateAuthenticationResponse)](../../models/operations/createauthenticationresponse.md)**




## feedback

Send feedback

### Example Usage

```ruby
require 'ding_sdk'


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
)


req = ::DingSDK::Shared::FeedbackRequest.new(
  customer_uuid: "c0c405fa-6bcb-4094-9430-7d6e2428ff23",
  phone_number: "+1234567890",
  status: ::DingSDK::Shared::FeedbackRequestStatus::ONBOARDED,
)
    
res = s.otp.feedback(req)

if ! res.feedback_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                    | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `request`                                                                    | [::DingSDK::Shared::FeedbackRequest](../../models/shared/feedbackrequest.md) | :heavy_check_mark:                                                           | The request object to use for the request.                                   |

### Response

**[T.nilable(::DingSDK::Operations::FeedbackResponse)](../../models/operations/feedbackresponse.md)**




## retry

Perform a retry

### Example Usage

```ruby
require 'ding_sdk'


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
)


req = ::DingSDK::Shared::RetryAuthenticationRequest.new(
  authentication_uuid: "a74ee547-564d-487a-91df-37fb25413a91",
  customer_uuid: "3c8b3a46-881e-4cdd-93a6-f7f238bf020a",
)
    
res = s.otp.retry(req)

if ! res.retry_authentication_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `request`                                                                                          | [::DingSDK::Shared::RetryAuthenticationRequest](../../models/shared/retryauthenticationrequest.md) | :heavy_check_mark:                                                                                 | The request object to use for the request.                                                         |

### Response

**[T.nilable(::DingSDK::Operations::RetryResponse)](../../models/operations/retryresponse.md)**


