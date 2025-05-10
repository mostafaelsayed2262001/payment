import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget itemSelectionPayIcon({required String asset, bool isActive = false}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    height: 7.h,
    width: 25.w,
    decoration: BoxDecoration(
        border: Border.all(
            color: isActive == true ? Colors.green : Colors.black54,
            width: 1.5),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: isActive == true ? Colors.green : Colors.black54,
              blurRadius: 4,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 0),
              spreadRadius: 0)
        ]),
    child: Image.asset(
      asset,
    ),
  );
}
