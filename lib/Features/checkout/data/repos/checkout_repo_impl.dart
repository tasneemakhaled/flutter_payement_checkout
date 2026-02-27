import 'package:dartz/dartz.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/repos/checkout_repo.dart';
import 'package:flutter_payement_checkout/core/utils/errors/failure.dart';
import 'package:flutter_payement_checkout/core/utils/stripe_service.dart';

class CheckoutRepoImpl extends CheckoutRepo{
  StripeService stripeService=StripeService();
  @override
  Future<Either<Failure, void>> makePayement({required PaymentIntentInputModel payementIntentInputModel}) async{
    try {
  await stripeService.makePayement(paymentIntentInputModel: payementIntentInputModel);
  return right(null);
}  catch (e) {
  return left(ServerFailure(errorMessage: e.toString()));
}
  }

}