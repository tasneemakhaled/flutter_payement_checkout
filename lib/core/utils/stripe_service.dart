import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_payement_checkout/core/utils/api_keys.dart';
import 'package:flutter_payement_checkout/core/utils/api_service.dart';

class StripeService {
  final ApiService apiService=ApiService();
 Future< PaymentIntentModel >createPayemntIntent({required PaymentIntentInputModel paymentIntentInputModel})async{
 var response =await apiService.post(url: 'https://api.stripe.com/v1/payment_intents', token: ApiKeys.secretKey, body: paymentIntentInputModel.toJson());
  var  paymentIntentModel=PaymentIntentModel.fromJson(response.data);
   return paymentIntentModel;
  }
}

//1- create payment intent (amount,currency)
//2- init payment sheet (paymentIntentClientSecret,merchantDisplayName)
// present payment sheet