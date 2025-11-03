import 'package:flutter/material.dart';

abstract class Styles {
  TextStyle Medium25(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      fontFamily: "Inter_18pt",
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle Medium22(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily: "Inter_18pt",
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle SemiBold24(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: "Inter_18pt",
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle SemiBold20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: "Inter_18pt",
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle SemiBold18(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: "Inter_18pt",
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle Reguler18(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: "Inter_18pt",
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle Reguler20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: "Inter_18pt",
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle Reguler16(BuildContext context) {
    return TextStyle(
      color: Color(0xff4C4C4C),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: "Inter_18pt",
      fontWeight: FontWeight.w400,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  return width / 390;
}
