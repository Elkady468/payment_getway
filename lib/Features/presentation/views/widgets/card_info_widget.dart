import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:payment/core/utils/constant.dart' show Assets;
import 'package:payment/core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 73,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 26),
            child: SvgPicture.asset(Assets.masterLogo),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Credit Card", style: Styles.Reguler18(context)),
              Text("Mastercard **78", style: Styles.Reguler16(context)),
            ],
          ),
        ],
      ),
    );
  }
}
