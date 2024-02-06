# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  

    class ErrorResponse < ::DingSDK::Utils::FieldAugmented
      extend T::Sig

      # A machine-readable code that describes the error. Possible values are:
      #   * `invalid_phone_number` - This is not a valid E.164 number.
      #   * `internal_server_error` - An internal server error occurred.
      #   * `bad_request` - The request was malformed.
      #   * `account_invalid` - The provided customer UUID is invalid.
      #   * `negative_balance` - You have a negative balance.
      #   * `invalid_line` - Ding does not support this type of phone number.
      #   * `unsupported_region` - Ding does not support this region yet.
      #   * `invalid_auth_uuid` - The provided authentication UUID is invalid.
      #   * `blocked_number` - The phone number is in the blocklist.
      #   * `invalid_app_version` - The provided application version is invalid.
      #   * `invalid_os_version` - The provided OS version is invalid.
      #   * `invalid_device_model` - The provided device model is invalid.
      #   * `invalid_device_id` - The provided device ID is invalid.
      # 
      field :code, T.nilable(::DingSDK::Shared::Code), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('code'), 'decoder': Utils.enum_from_string(::DingSDK::Shared::Code, true) } }
      # A link to the documentation that describes the error.
      field :doc_url, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('doc_url') } }
      # A human-readable message that describes the error.
      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('message') } }


      sig { params(code: T.nilable(::DingSDK::Shared::Code), doc_url: T.nilable(::String), message: T.nilable(::String)).void }
      def initialize(code: nil, doc_url: nil, message: nil)
        @code = code
        @doc_url = doc_url
        @message = message
      end
    end
  end
end
