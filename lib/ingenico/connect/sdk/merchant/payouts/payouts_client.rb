#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/payout/payout_error_response'
require 'ingenico/connect/sdk/domain/payout/payout_response'

module Ingenico::Connect::SDK
  module Merchant
    module Payouts

      # Payouts client. Thread-safe.
      class PayoutsClient < Ingenico::Connect::SDK::ApiResource

        # parent::       {Ingenico::Connect::SDK::ApiResource}
        # path_context:: Hash of String to String
        def initialize(parent, path_context)
          super(parent, path_context)
        end

        # Resource /{{merchantId}}/payouts
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payouts_post Create payout}
        # body::    {Ingenico::Connect::SDK::Domain::Payout::CreatePayoutRequest}
        # context:: {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payout::PayoutResponse}
        # Raises:: {Ingenico::Connect::SDK::DeclinedPayoutException} if the GlobalCollect platform declined / rejected the payout. The payout result will be available from the exception.
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def create(body, context=nil)
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payouts', nil)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Payout::PayoutResponse,
            context)
        rescue ResponseException => e
          error_type = {
            400 => Ingenico::Connect::SDK::Domain::Payout::PayoutErrorResponse,
          }.fetch(e.status_code, Ingenico::Connect::SDK::Domain::Errors::ErrorResponse)
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payouts/{{payoutId}}
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payouts__payoutId__get Get payout}
        # payout_id:: String
        # context::   {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payout::PayoutResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def get(payout_id, context=nil)
          path_context = {
            'payoutId' => payout_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payouts/{payoutId}', path_context)
          return @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Connect::SDK::Domain::Payout::PayoutResponse,
            context)
        rescue ResponseException => e
          error_type = {
            404 => Ingenico::Connect::SDK::Domain::Errors::ErrorResponse,
          }.fetch(e.status_code, Ingenico::Connect::SDK::Domain::Errors::ErrorResponse)
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payouts/{{payoutId}}/approve
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payouts__payoutId__approve_post Approve payout}
        # payout_id:: String
        # body::      {Ingenico::Connect::SDK::Domain::Payout::ApprovePayoutRequest}
        # context::   {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payout::PayoutResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def approve(payout_id, body, context=nil)
          path_context = {
            'payoutId' => payout_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payouts/{payoutId}/approve', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Payout::PayoutResponse,
            context)
        rescue ResponseException => e
          error_type = {
            402 => Ingenico::Connect::SDK::Domain::Errors::ErrorResponse,
          }.fetch(e.status_code, Ingenico::Connect::SDK::Domain::Errors::ErrorResponse)
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payouts/{{payoutId}}/cancel
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payouts__payoutId__cancel_post Cancel payout}
        # payout_id:: String
        # context::   {Ingenico::Connect::SDK::CallContext}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def cancel(payout_id, context=nil)
          path_context = {
            'payoutId' => payout_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payouts/{payoutId}/cancel', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            nil,
            context)
        rescue ResponseException => e
          error_type = {
            402 => Ingenico::Connect::SDK::Domain::Errors::ErrorResponse,
          }.fetch(e.status_code, Ingenico::Connect::SDK::Domain::Errors::ErrorResponse)
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payouts/{{payoutId}}/cancelapproval
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payouts__payoutId__cancelapproval_post Undo approve payout}
        # payout_id:: String
        # context::   {Ingenico::Connect::SDK::CallContext}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def cancelapproval(payout_id, context=nil)
          path_context = {
            'payoutId' => payout_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payouts/{payoutId}/cancelapproval', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            nil,
            context)
        rescue ResponseException => e
          error_type = {
            405 => Ingenico::Connect::SDK::Domain::Errors::ErrorResponse,
          }.fetch(e.status_code, Ingenico::Connect::SDK::Domain::Errors::ErrorResponse)
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end
      end
    end
  end
end
