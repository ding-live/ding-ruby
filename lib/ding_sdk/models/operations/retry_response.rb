# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Operations
  

    class RetryResponse < ::DingSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Bad Request
      field :error_response, T.nilable(::DingSDK::Shared::ErrorResponse)
      # OK
      field :retry_authentication_response, T.nilable(::DingSDK::Shared::RetryAuthenticationResponse)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, error_response: T.nilable(::DingSDK::Shared::ErrorResponse), retry_authentication_response: T.nilable(::DingSDK::Shared::RetryAuthenticationResponse)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, error_response: nil, retry_authentication_response: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @error_response = error_response
        @retry_authentication_response = retry_authentication_response
      end
    end
  end
end