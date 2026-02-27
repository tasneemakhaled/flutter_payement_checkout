import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_payement_checkout/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/manager/cubit/payement_cubit.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/payement_methods_list_view.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class PayementMethodsBottomSheet extends StatelessWidget {
  const PayementMethodsBottomSheet({super.key, this.isLoading = false});
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PayementMethodsListView(),
          SizedBox(height: 20),
          BlocConsumer<PayementCubit, PayementState>(
            listener: (context, state) {
              if(state is PayementSuccess){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                  return ThankYouView();
                }));
              } if (state is PayementFailure){
                Navigator.of(context).pop();
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage)));
              }
            },
            builder: (context, state) {
              return SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff34a853),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                    ),

                    onPressed: () {
                      PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount:'100',currency: 'USD' ,customerId: 'cus_U3goiBTckA2FH3',);
                      BlocProvider.of<PayementCubit>(context).makePayement(payementIntentInputModel: paymentIntentInputModel);
                    },
                    child: state is PayementLoading
                        ? CircularProgressIndicator()
                        : Text('Continue', style: Styles.style22),
                  ),
                
              );
            },
          ),
        ],
      ),
    );
  }
}
