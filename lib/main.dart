import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/my_cart_view.dart';

void main() {
  runApp(const PaymentGateway());
}

class PaymentGateway extends StatelessWidget {
  const PaymentGateway({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCartView());
  }
}
