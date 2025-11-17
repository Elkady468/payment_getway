import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widgets/custom_check_icon.dart';
import 'package:payment/Features/presentation/views/widgets/dash_line.dart';
import 'package:payment/Features/presentation/views/widgets/thank_you_item.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouItem(),

          Positioned(
            left: 28,
            right: 28,
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            child: CustomDashLine(),
          ),

          Positioned(right: 0, left: 0, top: -50, child: CustomCheckIcon()),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
