#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RedirectData RedirectData}
      class RedirectData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :returnmac

        # String
        attr_accessor :redirect_url

        def to_h
          hash = super
          add_to_hash(hash, 'RETURNMAC', @returnmac)
          add_to_hash(hash, 'redirectURL', @redirect_url)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('RETURNMAC')
            @returnmac = hash['RETURNMAC']
          end
          if hash.has_key?('redirectURL')
            @redirect_url = hash['redirectURL']
          end
        end
      end
    end
  end
end