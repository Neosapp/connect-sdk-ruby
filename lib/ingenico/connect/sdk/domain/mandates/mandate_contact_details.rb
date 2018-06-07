#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      class MandateContactDetails < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :email_address

        def to_h
          hash = super
          add_to_hash(hash, 'emailAddress', @email_address)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('emailAddress')
            @email_address = hash['emailAddress']
          end
        end
      end
    end
  end
end
