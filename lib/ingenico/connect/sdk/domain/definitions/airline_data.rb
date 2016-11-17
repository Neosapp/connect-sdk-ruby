#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/airline_flight_leg'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_AirlineData AirlineData}
      class AirlineData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :agent_numeric_code

        # String
        attr_accessor :code

        # String
        attr_accessor :flight_date

        # Array of {Ingenico::Connect::SDK::Domain::Definitions::AirlineFlightLeg}
        attr_accessor :flight_legs

        # String
        attr_accessor :invoice_number

        # true/false
        attr_accessor :is_e_ticket

        # true/false
        attr_accessor :is_registered_customer

        # true/false
        attr_accessor :is_restricted_ticket

        # true/false
        attr_accessor :is_third_party

        # String
        attr_accessor :issue_date

        # String
        attr_accessor :merchant_customer_id

        # String
        attr_accessor :name

        # String
        attr_accessor :passenger_name

        # String
        attr_accessor :place_of_issue

        # String
        attr_accessor :pnr

        # String
        attr_accessor :point_of_sale

        # String
        attr_accessor :pos_city_code

        # String
        attr_accessor :ticket_delivery_method

        # String
        attr_accessor :ticket_number

        def to_h
          hash = super
          add_to_hash(hash, 'agentNumericCode', @agent_numeric_code)
          add_to_hash(hash, 'code', @code)
          add_to_hash(hash, 'flightDate', @flight_date)
          add_to_hash(hash, 'flightLegs', @flight_legs)
          add_to_hash(hash, 'invoiceNumber', @invoice_number)
          add_to_hash(hash, 'isETicket', @is_e_ticket)
          add_to_hash(hash, 'isRegisteredCustomer', @is_registered_customer)
          add_to_hash(hash, 'isRestrictedTicket', @is_restricted_ticket)
          add_to_hash(hash, 'isThirdParty', @is_third_party)
          add_to_hash(hash, 'issueDate', @issue_date)
          add_to_hash(hash, 'merchantCustomerId', @merchant_customer_id)
          add_to_hash(hash, 'name', @name)
          add_to_hash(hash, 'passengerName', @passenger_name)
          add_to_hash(hash, 'placeOfIssue', @place_of_issue)
          add_to_hash(hash, 'pnr', @pnr)
          add_to_hash(hash, 'pointOfSale', @point_of_sale)
          add_to_hash(hash, 'posCityCode', @pos_city_code)
          add_to_hash(hash, 'ticketDeliveryMethod', @ticket_delivery_method)
          add_to_hash(hash, 'ticketNumber', @ticket_number)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('agentNumericCode')
            @agent_numeric_code = hash['agentNumericCode']
          end
          if hash.has_key?('code')
            @code = hash['code']
          end
          if hash.has_key?('flightDate')
            @flight_date = hash['flightDate']
          end
          if hash.has_key?('flightLegs')
            if !(hash['flightLegs'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['flightLegs']]
            end
            @flight_legs = []
            hash['flightLegs'].each do |e|
              @flight_legs << Ingenico::Connect::SDK::Domain::Definitions::AirlineFlightLeg.new_from_hash(e)
            end
          end
          if hash.has_key?('invoiceNumber')
            @invoice_number = hash['invoiceNumber']
          end
          if hash.has_key?('isETicket')
            @is_e_ticket = hash['isETicket']
          end
          if hash.has_key?('isRegisteredCustomer')
            @is_registered_customer = hash['isRegisteredCustomer']
          end
          if hash.has_key?('isRestrictedTicket')
            @is_restricted_ticket = hash['isRestrictedTicket']
          end
          if hash.has_key?('isThirdParty')
            @is_third_party = hash['isThirdParty']
          end
          if hash.has_key?('issueDate')
            @issue_date = hash['issueDate']
          end
          if hash.has_key?('merchantCustomerId')
            @merchant_customer_id = hash['merchantCustomerId']
          end
          if hash.has_key?('name')
            @name = hash['name']
          end
          if hash.has_key?('passengerName')
            @passenger_name = hash['passengerName']
          end
          if hash.has_key?('placeOfIssue')
            @place_of_issue = hash['placeOfIssue']
          end
          if hash.has_key?('pnr')
            @pnr = hash['pnr']
          end
          if hash.has_key?('pointOfSale')
            @point_of_sale = hash['pointOfSale']
          end
          if hash.has_key?('posCityCode')
            @pos_city_code = hash['posCityCode']
          end
          if hash.has_key?('ticketDeliveryMethod')
            @ticket_delivery_method = hash['ticketDeliveryMethod']
          end
          if hash.has_key?('ticketNumber')
            @ticket_number = hash['ticketNumber']
          end
        end
      end
    end
  end
end
