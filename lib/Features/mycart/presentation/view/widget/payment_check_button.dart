import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/widget/text_utils.dart';

Widget paymentCheckButton(context,
    {required Function() onTap, required String title}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(15)),
        height: MediaQuery.of(context).size.height * .08,
        width: double.infinity,
        child: Center(
            child: Text(
          title,
          style: Styles.style22,
        ))),
  );
}
