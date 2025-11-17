import 'package:flutter/material.dart';

class ThankYouItem extends StatelessWidget {
  const ThankYouItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Row(children: [Text("Thank You")]),
    );
  }
}
