import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/payment_details.dart';
import 'package:payment/Features/presentation/views/widgets/custom_button.dart';
import 'package:payment/Features/presentation/views/widgets/order_info_section.dart';
import 'package:payment/core/utils/constant.dart';
import 'package:payment/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back, size: 28, color: Colors.black),
        title: Text("My Cart", style: Styles.Medium25(context)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Expanded(child: Center(child: Image.asset(Assets.cartImage))),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: OrdeInfoSection(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(
              text: "Complate Payment",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PaymentDetails();
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
