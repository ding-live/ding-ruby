# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module DingSDK
  module Shared
    # Code - A machine-readable code that describes the error. Possible values are:
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
    class Code < T::Enum
      enums do
        INVALID_PHONE_NUMBER = new('invalid_phone_number')
        INTERNAL_SERVER_ERROR = new('internal_server_error')
        BAD_REQUEST = new('bad_request')
        ACCOUNT_INVALID = new('account_invalid')
        NEGATIVE_BALANCE = new('negative_balance')
        INVALID_LINE = new('invalid_line')
        UNSUPPORTED_REGION = new('unsupported_region')
        INVALID_AUTH_UUID = new('invalid_auth_uuid')
        INVALID_APP_REALM = new('invalid_app_realm')
        UNSUPPORTED_APP_REALM_DEVICE_TYPE = new('unsupported_app_realm_device_type')
        APP_REALM_REQUIRE_DEVICE_TYPE = new('app_realm_require_device_type')
        BLOCKED_NUMBER = new('blocked_number')
        INVALID_APP_VERSION = new('invalid_app_version')
        INVALID_OS_VERSION = new('invalid_os_version')
        INVALID_DEVICE_MODEL = new('invalid_device_model')
        INVALID_DEVICE_ID = new('invalid_device_id')
      end
    end



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
      field :code, T.nilable(Shared::Code), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('code'), 'decoder': Utils.enum_from_string(Shared::Code, true) } }
      # A link to the documentation that describes the error.
      field :doc_url, T.nilable(String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('doc_url') } }
      # A human-readable message that describes the error.
      field :message, T.nilable(String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('message') } }


      sig { params(code: T.nilable(Shared::Code), doc_url: T.nilable(String), message: T.nilable(String)).void }
      def initialize(code: nil, doc_url: nil, message: nil)
        @code = code
        @doc_url = doc_url
        @message = message
      end
    end
  end
end
