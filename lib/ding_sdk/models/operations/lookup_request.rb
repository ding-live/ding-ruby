# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Operations
  

    class LookupRequest < ::DingSDK::Utils::FieldAugmented
      extend T::Sig


      field :customer_uuid, ::String, { 'header': { 'field_name': 'customer-uuid', 'style': 'simple', 'explode': false } }

      field :phone_number, ::String, { 'path_param': { 'field_name': 'phone_number', 'style': 'simple', 'explode': false } }


      sig { params(customer_uuid: ::String, phone_number: ::String).void }
      def initialize(customer_uuid: nil, phone_number: nil)
        @customer_uuid = customer_uuid
        @phone_number = phone_number
      end
    end
  end
end
