import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment/Features/presentation/views/widgets/card_info_widget.dart';
import 'package:payment/Features/presentation/views/widgets/paid_button.dart';
import 'package:payment/Features/presentation/views/widgets/payment_item_info.dart';
import 'package:payment/Features/presentation/views/widgets/total_section.dart';
import 'package:payment/core/utils/constant.dart';
import 'package:payment/core/utils/styles.dart';

class ThankYouItem extends StatelessWidget {
  const ThankYouItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),

      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16),
        child: Column(
          children: [
            Text("Thank You!", style: Styles.Medium25(context)),
            Text(
              "Your transaction was successful",
              style: Styles.Reguler20(context),
            ),
            SizedBox(height: 42),
            PaymentItemInfo(text1: 'Date', text2: '01/24/2023'),
            SizedBox(height: 20),
            PaymentItemInfo(text1: 'Time', text2: '10:15 AM'),
            SizedBox(height: 20),
            PaymentItemInfo(text1: 'To', text2: 'Sam Louis'),
            Divider(thickness: 2, height: 60),
            TotalSection(),
            SizedBox(height: 30),
            CardInfoWidget(),
            Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SvgPicture.asset(Assets.barcode), PaidButton()],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
