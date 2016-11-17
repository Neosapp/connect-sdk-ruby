#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_ValueMappingElement ValueMappingElement}
      class ValueMappingElement < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :display_name

        # String
        attr_accessor :value

        def to_h
          hash = super
          add_to_hash(hash, 'displayName', @display_name)
          add_to_hash(hash, 'value', @value)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('displayName')
            @display_name = hash['displayName']
          end
          if hash.has_key?('value')
            @value = hash['value']
          end
        end
      end
    end
  end
end