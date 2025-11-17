import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment/Features/presentation/views/thank_you_view.dart';
import 'package:payment/Features/presentation/views/widgets/custom_button.dart';
import 'package:payment/Features/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment/Features/presentation/views/widgets/payment_option.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 12)),
        SliverToBoxAdapter(child: PaymentOptionListView()),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          child: Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log("كله تمام يا كبير ");
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ThankYouView();
                      },
                    ),
                  );
                },
                text: "Pay",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
