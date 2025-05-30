# Otp
(*otp*)

## Overview

Send OTP codes to your users using their phone numbers.

### Available Operations

* [~~check~~](#check) - Check a code :warning: **Deprecated**
* [~~create_authentication~~](#create_authentication) - Send a code :warning: **Deprecated**
* [~~feedback~~](#feedback) - Send feedback :warning: **Deprecated**
* [~~get_authentication_status~~](#get_authentication_status) - Get authentication status :warning: **Deprecated**
* [~~retry~~](#retry) - Perform a retry :warning: **Deprecated**

## ~~check~~

Check that a code entered by a user is valid.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: Models::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

req = Models::Shared::CreateCheckRequest.new(
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

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Models::Shared::CreateCheckRequest](../../models/shared/createcheckrequest.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |

### Response

**[T.nilable(Models::Operations::CheckResponse)](../../models/operations/checkresponse.md)**



## ~~create_authentication~~

Send an OTP code to a user's phone number.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: Models::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

req = Models::Shared::CreateAuthenticationRequest.new(
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

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Shared::CreateAuthenticationRequest](../../models/shared/createauthenticationrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::CreateAuthenticationResponse)](../../models/operations/createauthenticationresponse.md)**



## ~~feedback~~

Send feedback about the authentication process.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: Models::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

req = Models::Shared::FeedbackRequest.new(
  customer_uuid: "cc0f6c04-40de-448f-8301-3cb0e6565dff",
  phone_number: "+1234567890",
  status: Models::Shared::FeedbackRequestStatus::ONBOARDED,
)

res = s.otp.feedback(req)

if ! res.feedback_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [Models::Shared::FeedbackRequest](../../models/shared/feedbackrequest.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |

### Response

**[T.nilable(Models::Operations::FeedbackResponse)](../../models/operations/feedbackresponse.md)**



## ~~get_authentication_status~~

Get the status of an authentication.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: Models::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
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

**[T.nilable(Models::Operations::GetAuthenticationStatusResponse)](../../models/operations/getauthenticationstatusresponse.md)**



## ~~retry~~

Perform a retry if a user has not received the code.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: Models::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

req = Models::Shared::RetryAuthenticationRequest.new(
  authentication_uuid: "a4e4548a-1f7b-451a-81cb-a68ed5aff3b0",
  customer_uuid: "28532118-1b33-420a-b57b-648c9bf85fee",
)

res = s.otp.retry(req)

if ! res.retry_authentication_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Shared::RetryAuthenticationRequest](../../models/shared/retryauthenticationrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::RetryResponse)](../../models/operations/retryresponse.md)**

