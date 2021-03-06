#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_exception'
require 'ingenico/connect/sdk/declined_payment_exception'
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/definitions/company_information'
require 'ingenico/connect/sdk/domain/payment/address_personal'
require 'ingenico/connect/sdk/domain/payment/card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/contact_details'
require 'ingenico/connect/sdk/domain/payment/create_payment_request'
require 'ingenico/connect/sdk/domain/payment/customer'
require 'ingenico/connect/sdk/domain/payment/line_item'
require 'ingenico/connect/sdk/domain/payment/line_item_invoice_data'
require 'ingenico/connect/sdk/domain/payment/order'
require 'ingenico/connect/sdk/domain/payment/order_invoice_data'
require 'ingenico/connect/sdk/domain/payment/order_references'
require 'ingenico/connect/sdk/domain/payment/personal_information'
require 'ingenico/connect/sdk/domain/payment/personal_name'
require 'ingenico/connect/sdk/domain/payment/shopping_cart'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Payment = Ingenico::Connect::SDK::Domain::Payment

def example
  get_client do |client|
    card = Definitions::Card.new
    card.card_number = '4567350000427977'
    card.cardholder_name = 'Wile E. Coyote'
    card.cvv = '123'
    card.expiry_date = '1220'

    card_payment_method_specific_input = Payment::CardPaymentMethodSpecificInput.new
    card_payment_method_specific_input.card = card
    card_payment_method_specific_input.payment_product_id = 1
    card_payment_method_specific_input.skip_authentication = false

    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 2980
    amount_of_money.currency_code = 'EUR'

    billing_address = Definitions::Address.new
    billing_address.additional_info = 'b'
    billing_address.city = 'Monument Valley'
    billing_address.country_code = 'US'
    billing_address.house_number = '13'
    billing_address.state = 'Utah'
    billing_address.street = 'Desertroad'
    billing_address.zip = '84536'

    company_information = Definitions::CompanyInformation.new
    company_information.name = 'Acme Labs'

    contact_details = Payment::ContactDetails.new
    contact_details.email_address = 'wile.e.coyote@acmelabs.com'
    contact_details.email_message_type = 'html'
    contact_details.fax_number = '+1234567891'
    contact_details.phone_number = '+1234567890'

    name = Payment::PersonalName.new
    name.first_name = 'Wile'
    name.surname = 'Coyote'
    name.surname_prefix = 'E.'
    name.title = 'Mr.'

    personal_information = Payment::PersonalInformation.new
    personal_information.date_of_birth = '19490917'
    personal_information.gender = 'male'
    personal_information.name = name

    shipping_name = Payment::PersonalName.new
    shipping_name.first_name = 'Road'
    shipping_name.surname = 'Runner'
    shipping_name.title = 'Miss'

    shipping_address = Payment::AddressPersonal.new
    shipping_address.additional_info = 'Suite II'
    shipping_address.city = 'Monument Valley'
    shipping_address.country_code = 'US'
    shipping_address.house_number = '1'
    shipping_address.name = shipping_name
    shipping_address.state = 'Utah'
    shipping_address.street = 'Desertroad'
    shipping_address.zip = '84536'

    customer = Payment::Customer.new
    customer.billing_address = billing_address
    customer.company_information = company_information
    customer.contact_details = contact_details
    customer.locale = 'en_US'
    customer.merchant_customer_id = '1234'
    customer.personal_information = personal_information
    customer.shipping_address = shipping_address
    customer.vat_number = '1234AB5678CD'

    invoice_data = Payment::OrderInvoiceData.new
    invoice_data.invoice_date = '20140306191500'
    invoice_data.invoice_number = '000000123'

    references = Payment::OrderReferences.new
    references.descriptor = 'Fast and Furry-ous'
    references.invoice_data = invoice_data
    references.merchant_order_id = 123456
    references.merchant_reference = 'AcmeOrder0001'

    items = []

    item1_amount_of_money = Definitions::AmountOfMoney.new
    item1_amount_of_money.amount = 2500
    item1_amount_of_money.currency_code = 'EUR'

    item1_invoice_data = Payment::LineItemInvoiceData.new
    item1_invoice_data.description = 'ACME Super Outfit'
    item1_invoice_data.nr_of_items = '1'
    item1_invoice_data.price_per_item = 2500

    item1 = Payment::LineItem.new
    item1.amount_of_money = item1_amount_of_money
    item1.invoice_data = item1_invoice_data

    items << item1

    item2_amount_of_money = Definitions::AmountOfMoney.new
    item2_amount_of_money.amount = 480
    item2_amount_of_money.currency_code = 'EUR'

    item2_invoice_data = Payment::LineItemInvoiceData.new
    item2_invoice_data.description = 'Aspirin'
    item2_invoice_data.nr_of_items = '12'
    item2_invoice_data.price_per_item = 40

    item2 = Payment::LineItem.new
    item2.amount_of_money = item2_amount_of_money
    item2.invoice_data = item2_invoice_data

    items << item2

    shopping_cart = Payment::ShoppingCart.new
    shopping_cart.items = items

    order = Payment::Order.new
    order.amount_of_money = amount_of_money
    order.customer = customer
    order.references = references
    order.shopping_cart = shopping_cart

    body = Payment::CreatePaymentRequest.new
    body.card_payment_method_specific_input = card_payment_method_specific_input
    body.order = order

    begin
      response = client.merchant('merchantId').payments().create(body)
    rescue Ingenico::Connect::SDK::DeclinedPaymentException => e
      handle_declined_payment(e.create_payment_result)
    rescue Ingenico::Connect::SDK::ApiException => e
      handle_api_errors(e.errors)
    end
  end
end

def get_client
  api_key_id = ENV.fetch('connect.api.apiKeyId', 'someKey')
  secret_api_key = ENV.fetch('connect.api.secretApiKey', 'someSecret')
  configuration_file_name = File.join(__FILE__, '..', '..', 'example_configuration.yml')
  yield client = Ingenico::Connect::SDK::Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
ensure
  # Free networking resources when done
  client.close unless client.nil?
end

def handle_declined_payment(create_payment_result)
  # handle the result here
end

def  handle_api_errors(errors)
  # handle the errors here
end
