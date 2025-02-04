import 'package:flutter/cupertino.dart';
import 'package:payment/core/widget/text_utils.dart';

Widget detailsItemsRow({
  required String itemTitle,
  required String itemData,
  bool isTotal =false,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Row(
      spacing: 10,
      children: [
        Text(
          itemTitle,
          style: isTotal==true ?Styles.styleBold18 :Styles.style18,
        ),
        Spacer(),
        Text(
          itemData,
          style: Styles.styleBold18,
        )
      ],
    ),
  );
}
