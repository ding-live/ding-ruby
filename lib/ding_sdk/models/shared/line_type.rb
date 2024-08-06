# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  
    # LineType - The type of phone line.
    class LineType < T::Enum
      enums do
        FIXED_LINE = new('FixedLine')
        MOBILE = new('Mobile')
        TOLL_FREE = new('TollFree')
        PREMIUM_RATE = new('PremiumRate')
        SHARED_COST = new('SharedCost')
        VOIP = new('Voip')
        PAGER = new('Pager')
        VOICE_MAIL = new('VoiceMail')
        UNIVERSAL_ACCESS = new('UniversalAccess')
        SERVICE = new('Service')
        UNKNOWN = new('Unknown')
      end
    end

  end
end
