import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widgets/payment_options_item.dart';
import 'package:payment/core/utils/constant.dart';

class PaymentOptionListView extends StatefulWidget {
  const PaymentOptionListView({super.key});

  @override
  State<PaymentOptionListView> createState() => _PaymentOptionListViewState();
}

class _PaymentOptionListViewState extends State<PaymentOptionListView> {
  final List<String> paymentMethodItem = [
    Assets.cardImage,
    Assets.payPalImage,
    Assets.applePayImage,
  ];
  @override
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodItem.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                activeIndex = index;
                setState(() {});
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: PaymentOptionsItem(
                image: paymentMethodItem[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
