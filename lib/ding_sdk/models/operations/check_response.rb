# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Operations
  

    class CheckResponse < ::DingSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # OK
      field :create_check_response, T.nilable(::DingSDK::Shared::CreateCheckResponse)
      # Bad Request
      field :error_response, T.nilable(::DingSDK::Shared::ErrorResponse)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, create_check_response: T.nilable(::DingSDK::Shared::CreateCheckResponse), error_response: T.nilable(::DingSDK::Shared::ErrorResponse)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, create_check_response: nil, error_response: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @create_check_response = create_check_response
        @error_response = error_response
      end
    end
  end
end
