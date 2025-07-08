# typed: true
# frozen_string_literal: true


class DingSDK::Models::Shared::RetryAuthenticationResponse
  extend ::Crystalline::MetadataFields::ClassMethods
end


class DingSDK::Models::Shared::RetryAuthenticationResponse
  def authentication_uuid(); end
  def authentication_uuid=(str_); end
  def created_at(); end
  def created_at=(str_); end
  def next_retry_at(); end
  def next_retry_at=(str_); end
  def remaining_retry(); end
  def remaining_retry=(str_); end
  def status(); end
  def status=(str_); end
end