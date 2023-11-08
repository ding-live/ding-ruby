# ding_sdk

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://github.com/ding-live/ding-ruby.git/actions"><img src="https://img.shields.io/github/actions/workflow/status/ding-live/ding-ruby/speakeasy_sdk_generation.yml?style=for-the-badge" /></a>
    
</div>


## 🏗 **Welcome to your new SDK!** 🏗

It has been generated successfully based on your OpenAPI spec. However, it is not yet ready for production use. Here are some next steps:
- [ ] 🛠 Make your SDK feel handcrafted by [customizing it](https://www.speakeasyapi.dev/docs/customize-sdks)
- [ ] ♻️ Refine your SDK quickly by iterating locally with the [Speakeasy CLI](https://github.com/speakeasy-api/speakeasy)
- [ ] 🎁 Publish your SDK to package managers by [configuring automatic publishing](https://www.speakeasyapi.dev/docs/productionize-sdks/publish-sdks)
- [ ] ✨ When ready to productionize, delete this section from the README
<!-- Start SDK Installation -->
# SDK Installation

```bash
gem install specific_install
gem specific_install https://github.com/ding-live/ding-ruby 
```
<!-- End SDK Installation -->

## SDK Example Usage
<!-- Start SDK Example Usage -->

# Send a code
Send an OTP code to a user's phone number.

```ruby
require_relative ding_sdk


s = DingSDK::Ding.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"YOUR_API_KEY",
  )
)

   
req = Shared::CreateAuthenticationRequest.new(
  request=Shared::CreateAuthenticationRequest.new(
    app_realm="string",
    app_version="string",
    callback_url="https://quiet-swing.com",
    customer_uuid="92ab9e1e-b217-45b1-bfcb-79a32fcc4c39",
    device_id="string",
    device_model="string",
    device_type=Shared::DeviceType::WEB,
    ip="97.139.118.123",
    is_returning_user=false,
    os_version="string",
    phone_number="+1234567890",
  ),
)
    
res = s.otp.create_autentication(req)

if ! res.create_authentication_response.nil?
  # handle response
end

```


# Check a code
Check that a code entered by a user is valid.

```ruby
require_relative ding_sdk


s = DingSDK::Ding.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"YOUR_API_KEY",
  )
)

   
req = Shared::CreateCheckRequest.new(
  request=Shared::CreateCheckRequest.new(
    authentication_uuid="e0e7b0e9-739d-424b-922f-1c2cb48ab077",
    check_code="123456",
    customer_uuid="8f1196d5-806e-4b71-9b24-5f96ec052808",
  ),
)
    
res = s.otp.check(req)

if ! res.create_check_response.nil?
  # handle response
end

```


# Retry an authentication
Retry an authentication if a user has not received the code.

```ruby
require_relative ding_sdk


s = DingSDK::Ding.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"YOUR_API_KEY",
  )
)

   
req = Shared::RetryAuthenticationRequest.new(
  request=Shared::RetryAuthenticationRequest.new(
    authentication_uuid="a74ee547-564d-487a-91df-37fb25413a91",
    customer_uuid="3c8b3a46-881e-4cdd-93a6-f7f238bf020a",
  ),
)
    
res = s.otp.retry(req)

if ! res.retry_authentication_response.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->

<!-- Start SDK Available Operations -->
# Available Resources and Operations


## [Otp](docs/sdks/otp/README.md)

* [check](docs/sdks/otp/README.md#check) - Check an authentication code
* [create_autentication](docs/sdks/otp/README.md#create_autentication) - Create an authentication
* [retry](docs/sdks/otp/README.md#retry) - Retry an authentication

## [Lookup](docs/sdks/lookup/README.md)

* [lookup](docs/sdks/lookup/README.md#lookup) - Lookup a phone number
<!-- End SDK Available Operations -->

<!-- Start Dev Containers -->



<!-- End Dev Containers -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
