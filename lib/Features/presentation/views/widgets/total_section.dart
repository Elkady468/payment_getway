import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class TotalSection extends StatelessWidget {
  const TotalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
