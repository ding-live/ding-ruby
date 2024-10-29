# Otp

## Overview

Send OTP codes to your users using their phone numbers.

### Available Operations

* [check](#check) - Check a code
* [create_authentication](#create_authentication) - Send a code
* [feedback](#feedback) - Send feedback
* [get_authentication_status](#get_authentication_status) - Get authentication status
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
  authentication_uuid: "eebe792b-2fcc-44a0-87f1-650e79259e02",
  check_code: "123456",
  customer_uuid: "64f66a7c-4b2c-4131-a8ff-d5b954cca05f",
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
  customer_uuid: "cf2edc1c-7fc6-48fb-86da-b7508c6b7b71",
  locale: "fr-FR",
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
  customer_uuid: "cc0f6c04-40de-448f-8301-3cb0e6565dff",
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



## get_authentication_status

Get authentication status

### Example Usage

```ruby
require 'ding_sdk'


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
)

    
res = s.otp.get_authentication_status(auth_uuid="d8446450-f2fa-4dd9-806b-df5b8c661f23")

if ! res.authentication_status_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `auth_uuid`        | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(::DingSDK::Operations::GetAuthenticationStatusResponse)](../../models/operations/getauthenticationstatusresponse.md)**



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
  authentication_uuid: "a4e4548a-1f7b-451a-81cb-a68ed5aff3b0",
  customer_uuid: "28532118-1b33-420a-b57b-648c9bf85fee",
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

