import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/repos/checkout_repo.dart';
import 'package:meta/meta.dart';

part 'payement_state.dart';

class PayementCubit extends Cubit<PayementState> {
  PayementCubit(this.checkoutRepo) : super(PayementInitial());
  final CheckoutRepo checkoutRepo;
  Future makePayement({
    required PaymentIntentInputModel payementIntentInputModel,
  }) async {
    emit(PayementLoading());
    var data = await checkoutRepo.makePayement(
      payementIntentInputModel: payementIntentInputModel,
    );
    data.fold((l) {
      emit(PayementFailure(errorMessage: l.errorMessage));
    }, (r) => emit(PayementSuccess()));
  }

  @override
  void onChange(Change<PayementState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
