# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/errorresponse'
require_relative '../shared/retryauthenticationresponse'

module DingSDK
  module Operations

    class RetryResponse < DingSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Bad Request
      field :error_response, T.nilable(Shared::ErrorResponse)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # OK
      field :retry_authentication_response, T.nilable(Shared::RetryAuthenticationResponse)


      sig { params(content_type: String, status_code: Integer, error_response: T.nilable(Shared::ErrorResponse), raw_response: T.nilable(Faraday::Response), retry_authentication_response: T.nilable(Shared::RetryAuthenticationResponse)).void }
      def initialize(content_type: nil, status_code: nil, error_response: nil, raw_response: nil, retry_authentication_response: nil)
        @content_type = content_type
        @status_code = status_code
        @error_response = error_response
        @raw_response = raw_response
        @retry_authentication_response = retry_authentication_response
      end
    end
  end
end