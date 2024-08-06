# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  

    class CreateAuthenticationRequest < ::DingSDK::Utils::FieldAugmented
      extend T::Sig

      # Your customer UUID, which can be found in the API settings in the dashboard.
      field :customer_uuid, ::String, { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('customer_uuid') } }
      # An E.164 formatted phone number to send the OTP to.
      field :phone_number, ::String, { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('phone_number') } }
      # The Android SMS Retriever API hash code that identifies your app. This allows you to automatically retrieve and fill the OTP code on Android devices.
      field :app_realm, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('app_realm') } }
      # The version of your application.
      field :app_version, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('app_version') } }
      # A webhook URL to which delivery statuses will be sent.
      field :callback_url, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('callback_url') } }
      # A unique, user-defined identifier that will be included in webhook events
      field :correlation_id, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('correlation_id') } }
      # Unique identifier for the user's device. For Android, this corresponds to the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
      field :device_id, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('device_id') } }
      # The model of the user's device.
      field :device_model, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('device_model') } }
      # The type of device the user is using.
      field :device_type, T.nilable(::DingSDK::Shared::DeviceType), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('device_type'), 'decoder': Utils.enum_from_string(::DingSDK::Shared::DeviceType, true) } }
      # The IP address of the user's device.
      field :ip, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('ip') } }
      # Whether the user is a returning user on your app.
      field :is_returning_user, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('is_returning_user') } }
      # The version of the user's device operating system.
      field :os_version, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('os_version') } }
      # The template id associated with the message content variant to be sent.
      field :template_id, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('template_id') } }


      sig { params(customer_uuid: ::String, phone_number: ::String, app_realm: T.nilable(::String), app_version: T.nilable(::String), callback_url: T.nilable(::String), correlation_id: T.nilable(::String), device_id: T.nilable(::String), device_model: T.nilable(::String), device_type: T.nilable(::DingSDK::Shared::DeviceType), ip: T.nilable(::String), is_returning_user: T.nilable(T::Boolean), os_version: T.nilable(::String), template_id: T.nilable(::String)).void }
      def initialize(customer_uuid: nil, phone_number: nil, app_realm: nil, app_version: nil, callback_url: nil, correlation_id: nil, device_id: nil, device_model: nil, device_type: nil, ip: nil, is_returning_user: nil, os_version: nil, template_id: nil)
        @customer_uuid = customer_uuid
        @phone_number = phone_number
        @app_realm = app_realm
        @app_version = app_version
        @callback_url = callback_url
        @correlation_id = correlation_id
        @device_id = device_id
        @device_model = device_model
        @device_type = device_type
        @ip = ip
        @is_returning_user = is_returning_user
        @os_version = os_version
        @template_id = template_id
      end
    end
  end
end
