#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Sessions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_SessionResponse SessionResponse}
      class SessionResponse < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :client_session_id

        # String
        attr_accessor :customer_id

        # Array of String
        attr_accessor :invalid_tokens

        # String
        attr_accessor :region

        def to_h
          hash = super
          add_to_hash(hash, 'clientSessionId', @client_session_id)
          add_to_hash(hash, 'customerId', @customer_id)
          add_to_hash(hash, 'invalidTokens', @invalid_tokens)
          add_to_hash(hash, 'region', @region)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('clientSessionId')
            @client_session_id = hash['clientSessionId']
          end
          if hash.has_key?('customerId')
            @customer_id = hash['customerId']
          end
          if hash.has_key?('invalidTokens')
            if !(hash['invalidTokens'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['invalidTokens']]
            end
            @invalid_tokens = []
            hash['invalidTokens'].each do |e|
              @invalid_tokens << e
            end
          end
          if hash.has_key?('region')
            @region = hash['region']
          end
        end
      end
    end
  end
end
