# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module DingSDK
  extend T::Sig
  class Lookup
    extend T::Sig
    # Retrieve up-to-date metadata about a specific phone number

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(customer_uuid: ::String, phone_number: ::String).returns(::DingSDK::Operations::LookupResponse) }
    def lookup(customer_uuid, phone_number)
      # lookup - Perform a phone number lookup
      request = ::DingSDK::Operations::LookupRequest.new(
        
        customer_uuid: customer_uuid,
        phone_number: phone_number
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::DingSDK::Operations::LookupRequest,
        base_url,
        '/lookup/{phone_number}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::DingSDK::Operations::LookupResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::DingSDK::Shared::LookupResponse)
          res.lookup_response = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::DingSDK::Shared::ErrorResponse)
          res.error_response = out
        end
      end
      res
    end
  end
end
