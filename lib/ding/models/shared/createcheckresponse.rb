# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module DingSDK
  module Shared
    # CreateCheckResponseStatus - A status representing the result of the check.
    class CreateCheckResponseStatus < T::Enum
      enums do
        VALID = new('valid')
        INVALID = new('invalid')
        WITHOUT_ATTEMPT = new('without_attempt')
        RATE_LIMITED = new('rate_limited')
        ALREADY_VALIDATED = new('already_validated')
        EXPIRED_AUTH = new('expired_auth')
      end
    end



    class CreateCheckResponse < DingSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the corresponding authentication.
      field :authentication_uuid, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('authentication_uuid') } }
      # A status representing the result of the check.
      field :status, T.nilable(Shared::CreateCheckResponseStatus), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(Shared::CreateCheckResponseStatus, true) } }


      sig { params(authentication_uuid: T.nilable(String), status: T.nilable(Shared::CreateCheckResponseStatus)).void }
      def initialize(authentication_uuid: nil, status: nil)
        @authentication_uuid = authentication_uuid
        @status = status
      end
    end
  end
end
