import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widgets/order_info_item.dart';
import 'package:payment/core/utils/styles.dart';

class OrdeInfoSection extends StatelessWidget {
  const OrdeInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderInfoItem(itemName: 'Order Subtotal', price: '42.97'),

        OrderInfoItem(itemName: 'Discount', price: '0.0'),
        OrderInfoItem(itemName: 'Shipping', price: '8.0'),
        Divider(height: 30, thickness: 2, endIndent: 16, indent: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total", style: Styles.SemiBold24(context)),
            Text("\$50.97", style: Styles.SemiBold24(context)),
          ],
        ),
      ],
    );
  }
}
