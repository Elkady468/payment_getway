import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.itemName, required this.price});
  final String itemName;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(itemName, style: Styles.Reguler18(context)),
        Text("\$$price", style: Styles.Reguler18(context)),
      ],
    );
  }
}
