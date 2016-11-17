#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_NonSepaDirectDebitPaymentProduct705SpecificInput NonSepaDirectDebitPaymentProduct705SpecificInput}
      class NonSepaDirectDebitPaymentProduct705SpecificInput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :authorisation_id

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban}
        attr_accessor :bank_account_bban

        # String
        attr_accessor :transaction_type

        def to_h
          hash = super
          add_to_hash(hash, 'authorisationId', @authorisation_id)
          add_to_hash(hash, 'bankAccountBban', @bank_account_bban)
          add_to_hash(hash, 'transactionType', @transaction_type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('authorisationId')
            @authorisation_id = hash['authorisationId']
          end
          if hash.has_key?('bankAccountBban')
            if !(hash['bankAccountBban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']]
            end
            @bank_account_bban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban.new_from_hash(hash['bankAccountBban'])
          end
          if hash.has_key?('transactionType')
            @transaction_type = hash['transactionType']
          end
        end
      end
    end
  end
end