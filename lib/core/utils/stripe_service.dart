import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_payement_checkout/core/utils/api_keys.dart';
import 'package:flutter_payement_checkout/core/utils/api_service.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService=ApiService();
 Future<PaymentIntentModel>createPayemntIntent({required PaymentIntentInputModel paymentIntentInputModel})async{
 var response =await apiService.post(url: 'https://api.stripe.com/v1/payment_intents', token: ApiKeys.secretKey, body: paymentIntentInputModel.toJson());
  var  paymentIntentModel=PaymentIntentModel.fromJson(response.data);
   return paymentIntentModel;
  }
Future initPayementSheet({required String paymentIntentClientSecret }) async{
    Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(paymentIntentClientSecret:paymentIntentClientSecret,merchantDisplayName: 'tasneem' ));
}
Future displayPayementSheet() async{
  Stripe.instance.presentPaymentSheet();
}
Future makePayement({required PaymentIntentInputModel paymentIntentInputModel})async{
  var paymentIntentModel= await createPayemntIntent(paymentIntentInputModel: paymentIntentInputModel);
  await initPayementSheet(paymentIntentClientSecret: paymentIntentModel.clientSecret!);
  await displayPayementSheet();
}

}

//1- create payment intent (amount,currency)
//2- init payment sheet (paymentIntentClientSecret,merchantDisplayName)
// present payment sheet