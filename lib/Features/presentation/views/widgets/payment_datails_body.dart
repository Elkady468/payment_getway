import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widgets/payment_option.dart';
import 'package:payment/Features/presentation/views/widgets/payment_options_item.dart';
import 'package:payment/core/utils/constant.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 12), PaymentOption()]);
  }
}
