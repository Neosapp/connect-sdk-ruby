#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Products

      # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/get.html Get payment product}
      class GetProductParams < Ingenico::Connect::SDK::ParamRequest

        # String
        attr_accessor :country_code

        # String
        attr_accessor :currency_code

        # String
        attr_accessor :locale

        # Integer
        attr_accessor :amount

        # true/false
        attr_accessor :is_recurring

        # Array of String
        attr_accessor :hide

        # true/false
        attr_accessor :force_basic_flow

        # Adds the parameter _value_ to the _hide_ Array
        def add_hide(value)
          unless @hide
            @hide = []
          end
          @hide << value
        end

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'countryCode', @country_code)
          add_parameter(result, 'currencyCode', @currency_code)
          add_parameter(result, 'locale', @locale)
          add_parameter(result, 'amount', @amount)
          add_parameter(result, 'isRecurring', @is_recurring)
          add_parameter(result, 'hide', @hide)
          add_parameter(result, 'forceBasicFlow', @force_basic_flow)
          result
        end
      end
    end
  end
end
