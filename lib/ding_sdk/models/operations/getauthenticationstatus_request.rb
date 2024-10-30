# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Operations
  

    class GetAuthenticationStatusRequest < ::DingSDK::Utils::FieldAugmented
      extend T::Sig


      field :auth_uuid, ::String, { 'path_param': { 'field_name': 'auth_uuid', 'style': 'simple', 'explode': false } }


      sig { params(auth_uuid: ::String).void }
      def initialize(auth_uuid: nil)
        @auth_uuid = auth_uuid
      end
    end
  end
end