import 'package:dartz/dartz.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payement_checkout/core/utils/errors/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure,void>> makePayement({required PaymentIntentInputModel payementIntentInputModel});
}