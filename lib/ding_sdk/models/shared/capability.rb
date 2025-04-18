# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Models
    module Shared
    
      # Capability - The capability of the attempt.
      class Capability < T::Enum
        enums do
          RCS = new('rcs')
          TEXT = new('text')
          WHATSAPP = new('whatsapp')
          VIBER = new('viber')
        end
      end
    end
  end
end
