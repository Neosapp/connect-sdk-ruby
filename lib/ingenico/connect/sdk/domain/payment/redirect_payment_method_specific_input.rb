#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/payment/redirect_payment_method_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product809_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product816_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product882_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RedirectPaymentMethodSpecificInput RedirectPaymentMethodSpecificInput}
      class RedirectPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificInputBase

        # true/false
        attr_accessor :is_recurring

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct809SpecificInput}
        attr_accessor :payment_product809_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct816SpecificInput}
        attr_accessor :payment_product816_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct882SpecificInput}
        attr_accessor :payment_product882_specific_input

        # String
        attr_accessor :return_url

        def to_h
          hash = super
          add_to_hash(hash, 'isRecurring', @is_recurring)
          add_to_hash(hash, 'paymentProduct809SpecificInput', @payment_product809_specific_input)
          add_to_hash(hash, 'paymentProduct816SpecificInput', @payment_product816_specific_input)
          add_to_hash(hash, 'paymentProduct882SpecificInput', @payment_product882_specific_input)
          add_to_hash(hash, 'returnUrl', @return_url)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('isRecurring')
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key?('paymentProduct809SpecificInput')
            if !(hash['paymentProduct809SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct809SpecificInput']]
            end
            @payment_product809_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct809SpecificInput.new_from_hash(hash['paymentProduct809SpecificInput'])
          end
          if hash.has_key?('paymentProduct816SpecificInput')
            if !(hash['paymentProduct816SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct816SpecificInput']]
            end
            @payment_product816_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct816SpecificInput.new_from_hash(hash['paymentProduct816SpecificInput'])
          end
          if hash.has_key?('paymentProduct882SpecificInput')
            if !(hash['paymentProduct882SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct882SpecificInput']]
            end
            @payment_product882_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct882SpecificInput.new_from_hash(hash['paymentProduct882SpecificInput'])
          end
          if hash.has_key?('returnUrl')
            @return_url = hash['returnUrl']
          end
        end
      end
    end
  end
end