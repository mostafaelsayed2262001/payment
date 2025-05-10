
import 'package:flutter/cupertino.dart';
import 'package:payment/core/widget/text_utils.dart';

Widget orderInfo({required String title, required String value}) {
  return Row(
    children: [
      Text(
        title,
        style: Styles.style18,
      ),
      Spacer(),
      Text(
        value,
        style: Styles.style18,
      )
    ],
  );
}
