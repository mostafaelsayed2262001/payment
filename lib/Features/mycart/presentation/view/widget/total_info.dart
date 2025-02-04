import 'package:flutter/cupertino.dart';
import 'package:payment/core/widget/text_utils.dart';

Widget totalInfoRow({required String title, required String value}) {
  return Row(
    children: [
      Text(
        title,
        style: Styles.style25,
      ),
      Spacer(),
      Text(
        value,
        style: Styles.style25,
      )
    ],
  );
}