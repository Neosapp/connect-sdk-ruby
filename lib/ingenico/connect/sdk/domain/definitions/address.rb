#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class Address < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :additional_info

        # String
        attr_accessor :city

        # String
        attr_accessor :country_code

        # String
        attr_accessor :house_number

        # String
        attr_accessor :state

        # String
        attr_accessor :state_code

        # String
        attr_accessor :street

        # String
        attr_accessor :zip

        def to_h
          hash = super
          add_to_hash(hash, 'additionalInfo', @additional_info)
          add_to_hash(hash, 'city', @city)
          add_to_hash(hash, 'countryCode', @country_code)
          add_to_hash(hash, 'houseNumber', @house_number)
          add_to_hash(hash, 'state', @state)
          add_to_hash(hash, 'stateCode', @state_code)
          add_to_hash(hash, 'street', @street)
          add_to_hash(hash, 'zip', @zip)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('additionalInfo')
            @additional_info = hash['additionalInfo']
          end
          if hash.has_key?('city')
            @city = hash['city']
          end
          if hash.has_key?('countryCode')
            @country_code = hash['countryCode']
          end
          if hash.has_key?('houseNumber')
            @house_number = hash['houseNumber']
          end
          if hash.has_key?('state')
            @state = hash['state']
          end
          if hash.has_key?('stateCode')
            @state_code = hash['stateCode']
          end
          if hash.has_key?('street')
            @street = hash['street']
          end
          if hash.has_key?('zip')
            @zip = hash['zip']
          end
        end
      end
    end
  end
end
