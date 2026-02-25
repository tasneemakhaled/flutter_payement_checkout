import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/payement_methods_list_view.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class PayementMethodsBottomSheet extends StatelessWidget {
  const PayementMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PayementMethodsListView(),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff34a853),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
              ),

              onPressed: () {},
              child: Text('Continue', style: Styles.style22),
            ),
          ),
        ],
      ),
    );
  }
}
