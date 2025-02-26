# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  
    # A successful response to an authentication creation request.
    class CreateAuthenticationResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # A unique identifier for the authentication that you can use on the /check and /retry endpoints.
      field :authentication_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('authentication_uuid') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The time at which the authentication expires and can no longer be checked or retried.
      field :expires_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('expires_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The status of the authentication. Possible values are:
      #   * `pending` - The OTP code is being sent.
      #   * `rate_limited` - This user is rate-limited and cannot receive another code.
      #   * `spam_detected` - This attempt is flagged as spam. Go to the dashboard for more details.
      # 
      field :status, T.nilable(::DingSDK::Shared::Status), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::DingSDK::Shared::Status, true) } }


      sig { params(authentication_uuid: T.nilable(::String), created_at: T.nilable(::DateTime), expires_at: T.nilable(::DateTime), status: T.nilable(::DingSDK::Shared::Status)).void }
      def initialize(authentication_uuid: nil, created_at: nil, expires_at: nil, status: nil)
        @authentication_uuid = authentication_uuid
        @created_at = created_at
        @expires_at = expires_at
        @status = status
      end
    end
  end
end
