import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/Features/payment_done/presentation/view/widget/details_item_row.dart';
import 'package:payment/Features/payment_done/presentation/view/widget/done_Icon_widget.dart';
import 'package:payment/Features/payment_done/presentation/view/widget/thanks_body.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/theme/app_theme.dart';
import 'package:payment/core/widget/text_utils.dart';
import 'package:sizer/sizer.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PaymentDone"),
        leading: Container(),
      ),
      body: thanksBodyWidget(context),
    );
  }
}
