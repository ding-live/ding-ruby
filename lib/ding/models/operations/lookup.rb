# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/errorresponse'
require_relative '../shared/lookupresponse'

module DingSDK
  module Operations

    class LookupRequest < ::DingSDK::Utils::FieldAugmented
      extend T::Sig


      field :customer_uuid, String, { 'header': { 'field_name': 'customer-uuid', 'style': 'simple', 'explode': false } }

      field :phone_number, String, { 'path_param': { 'field_name': 'phone_number', 'style': 'simple', 'explode': false } }


      sig { params(customer_uuid: String, phone_number: String).void }
      def initialize(customer_uuid: nil, phone_number: nil)
        @customer_uuid = customer_uuid
        @phone_number = phone_number
      end
    end


    class LookupResponse < ::DingSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Bad Request
      field :error_response, T.nilable(Shared::ErrorResponse)
      # OK
      field :lookup_response, T.nilable(Shared::LookupResponse)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, error_response: T.nilable(Shared::ErrorResponse), lookup_response: T.nilable(Shared::LookupResponse)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, error_response: nil, lookup_response: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @error_response = error_response
        @lookup_response = lookup_response
      end
    end
  end
end
