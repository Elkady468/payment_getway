import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widgets/payment_datails_body.dart';
import 'package:payment/core/utils/styles.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 28, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),

        centerTitle: true,
        title: Text("Payment Details", style: Styles.Medium25(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PaymentDetailsBody(),
      ),
    );
  }
}
