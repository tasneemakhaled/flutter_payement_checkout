import 'package:dio/dio.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/create_ephemeral_key/create.ephemeral.key.model.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_payement_checkout/core/utils/api_keys.dart';
import 'package:flutter_payement_checkout/core/utils/api_service.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPayemntIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    var response = await apiService.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPayementSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'tasneem',
      ),
    );
  }

  Future displayPayementSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayement({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    var paymentIntentModel = await createPayemntIntent(
      paymentIntentInputModel: paymentIntentInputModel,
    );
    await initPayementSheet(
      paymentIntentClientSecret: paymentIntentModel.clientSecret!,
    );
    await displayPayementSheet();
  }

  Future<PaymentIntentModel> createCustomer({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    var response = await apiService.post(
      url: 'https://api.stripe.com/v1/customers',
      token: ApiKeys.secretKey,
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
 Future<EphemeralKeyModel> createEphemeralKey({
    required String customerId
  }) async {
    var response = await apiService.post(
      headers: {
        'Stripe-Version': '2023-10-16',
        'Authorization': "Bearer $ApiKeys.secretKey,",
      },
      url: 'https://api.stripe.com/v1/ephemeral_keys',
     token: ApiKeys.secretKey,
      body: {
        'customer':customerId,
      },
      contentType: Headers.formUrlEncodedContentType,
      
    );
    var ephemeralKeyModel = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyModel;
  }

 

}

//1- create payment intent (amount,currency)
//2- init payment sheet (paymentIntentClientSecret,merchantDisplayName)
// present payment sheet
