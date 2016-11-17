#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Products

      # Query parameters for {https://developer.globalcollect.com/documentation/api/server/#__merchantId__products__paymentProductId__directory_get Get payment product directory}
      class DirectoryParams < Ingenico::Connect::SDK::ParamRequest

        # String
        attr_accessor :currency_code

        # String
        attr_accessor :country_code
        attr_accessor :currency_code, :country_code

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'currencyCode', @currency_code)
          add_parameter(result, 'countryCode', @country_code)
          result
        end
      end
    end
  end
end
