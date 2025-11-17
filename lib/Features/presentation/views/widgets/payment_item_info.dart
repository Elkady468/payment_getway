import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1, style: Styles.Reguler18(context)),
        Text(text2, style: Styles.SemiBold18(context)),
      ],
    );
  }
}
