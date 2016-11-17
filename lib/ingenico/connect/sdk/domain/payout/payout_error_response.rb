#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/errors/api_error'
require 'ingenico/connect/sdk/domain/payout/payout_result'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PayoutErrorResponse PayoutErrorResponse}
      class PayoutErrorResponse < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :error_id

        # Array of {Ingenico::Connect::SDK::Domain::Errors::APIError}
        attr_accessor :errors

        # {Ingenico::Connect::SDK::Domain::Payout::PayoutResult}
        attr_accessor :payout_result

        def to_h
          hash = super
          add_to_hash(hash, 'errorId', @error_id)
          add_to_hash(hash, 'errors', @errors)
          add_to_hash(hash, 'payoutResult', @payout_result)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('errorId')
            @error_id = hash['errorId']
          end
          if hash.has_key?('errors')
            if !(hash['errors'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['errors']]
            end
            @errors = []
            hash['errors'].each do |e|
              @errors << Ingenico::Connect::SDK::Domain::Errors::APIError.new_from_hash(e)
            end
          end
          if hash.has_key?('payoutResult')
            if !(hash['payoutResult'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['payoutResult']]
            end
            @payout_result = Ingenico::Connect::SDK::Domain::Payout::PayoutResult.new_from_hash(hash['payoutResult'])
          end
        end
      end
    end
  end
end