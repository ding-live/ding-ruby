# Ding Ruby SDK

The Ding Ruby library provides convenient access to the Ding API from applications written in the Ruby language.

<!-- Start Summary [summary] -->
## Summary

Ding: The OTP API allows you to send authentication codes to your users using their phone numbers. The V1 API is **deprecated**. Technical support will end by **October 2025** and will be **removed by April 2026**. No new features and functionality will be added to the V1 API.
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
* [Ding Ruby SDK](#ding-ruby-sdk)
  * [SDK Installation](#sdk-installation)
  * [SDK Example Usage](#sdk-example-usage)
  * [SDK Example Usage](#sdk-example-usage-1)
  * [Authentication](#authentication)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Error Handling](#error-handling)
  * [Server Selection](#server-selection)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install ding_sdk
```
<!-- End SDK Installation [installation] -->

## SDK Example Usage

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Send a code

Send an OTP code to a user's phone number.

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

### Check a code

Check that a code entered by a user is valid.

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

### Perform a retry

Perform a retry if a user has not received the code.

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

### Send feedback

Send feedback about the authentication process.


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

### Get authentication status

Get the status of an authentication.

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

### Look up for phone number

Perform a phone number lookup.

```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: Models::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

res = s.lookup.lookup(customer_uuid="69a197d9-356c-45d1-a807-41874e16b555", phone_number="<value>", type=[
  Models::Operations::Type::CNAM,
])

if ! res.lookup_response.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Authentication [security] -->
## Authentication

### Per-Client Security Schemes

This SDK supports the following security scheme globally:

| Name      | Type   | Scheme  |
| --------- | ------ | ------- |
| `api_key` | apiKey | API key |

You can set the security parameters through the `security` optional parameter when initializing the SDK client instance. For example:
<!-- End Authentication [security] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>


### [~~lookup~~](docs/sdks/lookup/README.md)

* [~~lookup~~](docs/sdks/lookup/README.md#lookup) - Look up for phone number :warning: **Deprecated**

### [~~otp~~](docs/sdks/otp/README.md)

* [~~check~~](docs/sdks/otp/README.md#check) - Check a code :warning: **Deprecated**
* [~~create_authentication~~](docs/sdks/otp/README.md#create_authentication) - Send a code :warning: **Deprecated**
* [~~feedback~~](docs/sdks/otp/README.md#feedback) - Send feedback :warning: **Deprecated**
* [~~get_authentication_status~~](docs/sdks/otp/README.md#get_authentication_status) - Get authentication status :warning: **Deprecated**
* [~~retry~~](docs/sdks/otp/README.md#retry) - Perform a retry :warning: **Deprecated**

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Error Handling [errors] -->
## Error Handling

Handling errors in this SDK should largely match your expectations. All operations return a response object or raise an error.

By default an API error will raise a `Errors::APIError`, which has the following properties:

| Property       | Type                                    | Description           |
|----------------|-----------------------------------------|-----------------------|
| `message`     | *string*                                 | The error message     |
| `status_code`  | *int*                                   | The HTTP status code  |
| `raw_response` | *Faraday::Response*                     | The raw HTTP response |
| `body`        | *string*                                 | The response content  |

When custom error responses are specified for an operation, the SDK may also throw their associated exception. You can refer to respective *Errors* tables in SDK docs for more details on possible exception types for each operation. For example, the `check` method throws the following exceptions:

| Error Type                    | Status Code | Content Type     |
| ----------------------------- | ----------- | ---------------- |
| Models::Errors::ErrorResponse | 400         | application/json |
| Errors::APIError              | 4XX, 5XX    | \*/\*            |

### Example

```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: Models::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

begin
    req = Models::Shared::CreateCheckRequest.new(
      authentication_uuid: "eebe792b-2fcc-44a0-87f1-650e79259e02",
      check_code: "123456",
      customer_uuid: "64f66a7c-4b2c-4131-a8ff-d5b954cca05f",
    )

    res = s.otp.check(req)

    if ! res.create_check_response.nil?
      # handle response
    end
rescue Models::Errors::ErrorResponse => e
  # handle $e->$container data
  throw $e;
rescue Errors::APIError => e
  # handle default exception
  raise e
end

```
<!-- End Error Handling [errors] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Override Server URL Per-Client

The default server can be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!
