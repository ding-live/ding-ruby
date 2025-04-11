# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Models
    module Operations
    

      class GetAuthenticationStatusRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :auth_uuid, ::String, { 'path_param': { 'field_name': 'auth_uuid', 'style': 'simple', 'explode': false } }


        sig { params(auth_uuid: ::String).void }
        def initialize(auth_uuid: nil)
          @auth_uuid = auth_uuid
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @auth_uuid == other.auth_uuid
          true
        end
      end
    end
  end
end
