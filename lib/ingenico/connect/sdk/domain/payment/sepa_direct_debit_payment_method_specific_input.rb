#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_SepaDirectDebitPaymentMethodSpecificInput SepaDirectDebitPaymentMethodSpecificInput}
      class SepaDirectDebitPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        # String
        attr_accessor :date_collect

        # String
        attr_accessor :direct_debit_text

        # true/false
        attr_accessor :is_recurring

        # String
        attr_accessor :recurring_payment_sequence_indicator

        # String
        attr_accessor :token

        def to_h
          hash = super
          add_to_hash(hash, 'dateCollect', @date_collect)
          add_to_hash(hash, 'directDebitText', @direct_debit_text)
          add_to_hash(hash, 'isRecurring', @is_recurring)
          add_to_hash(hash, 'recurringPaymentSequenceIndicator', @recurring_payment_sequence_indicator)
          add_to_hash(hash, 'token', @token)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('dateCollect')
            @date_collect = hash['dateCollect']
          end
          if hash.has_key?('directDebitText')
            @direct_debit_text = hash['directDebitText']
          end
          if hash.has_key?('isRecurring')
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key?('recurringPaymentSequenceIndicator')
            @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
          end
          if hash.has_key?('token')
            @token = hash['token']
          end
        end
      end
    end
  end
end