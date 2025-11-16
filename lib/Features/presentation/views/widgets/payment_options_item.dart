import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentOptionsItem extends StatelessWidget {
  const PaymentOptionsItem({
    super.key,
    required this.image,
    required this.isActive,
  });
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 70,
      width: MediaQuery.sizeOf(context).width * .26,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50,
            color: isActive ? const Color(0xFF34A853) : Color(0xff7D7D7D),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? Color(0xFF34A853) : Colors.white,
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
