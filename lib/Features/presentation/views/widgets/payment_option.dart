import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widgets/payment_options_item.dart';
import 'package:payment/core/utils/constant.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: PaymentOptionsItem(image: Assets.cardImage)),
        SizedBox(width: 20),
        Expanded(child: PaymentOptionsItem(image: Assets.payPalImage)),
        SizedBox(width: 20),

        Expanded(child: PaymentOptionsItem(image: Assets.applePayImage)),
      ],
    );
  }
}
