# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/createauthenticationresponse'
require_relative '../shared/errorresponse'

module DingSDK
  module Operations

    class CreateAutenticationResponse < DingSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # OK
      field :create_authentication_response, T.nilable(Shared::CreateAuthenticationResponse)
      # Bad Request
      field :error_response, T.nilable(Shared::ErrorResponse)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, create_authentication_response: T.nilable(Shared::CreateAuthenticationResponse), error_response: T.nilable(Shared::ErrorResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, create_authentication_response: nil, error_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @create_authentication_response = create_authentication_response
        @error_response = error_response
        @raw_response = raw_response
      end
    end
  end
end
