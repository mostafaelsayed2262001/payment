import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/core/widget/text_utils.dart';

PreferredSizeWidget customAppBar(context,{required String title}){
  return AppBar(
    leading: InkWell(
        onTap: () => GoRouter.of(context).pop(),
        child: Icon(
          Icons.arrow_back_ios,
          size: 25,
        )),
    centerTitle: true,
    title: Text(
      title,
      style: Styles.style25,
    ),
  );
}