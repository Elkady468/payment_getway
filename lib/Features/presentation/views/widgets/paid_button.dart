import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class PaidButton extends StatelessWidget {
  const PaidButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      height: 58,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50, color: const Color(0xFF34A853)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          "PAID",
          style: Styles.SemiBold24(
            context,
          ).copyWith(color: const Color(0xFF34A853)),
        ),
      ),
    );
  }
}
