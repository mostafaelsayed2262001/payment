import 'package:flutter/material.dart';
import 'package:payment/Features/payment_done/presentation/view/widget/thanks_body.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PaymentDone"),
        leading: thanksBodyWidget(context),
      ),
      body: SingleChildScrollView(child: thanksBodyWidget(context)),
    );
  }
}
