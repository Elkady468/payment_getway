import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Transform.translate(
        offset: Offset(0, 50),
        child: ThankYouViewBody(),
      ),
    );
  }
}
