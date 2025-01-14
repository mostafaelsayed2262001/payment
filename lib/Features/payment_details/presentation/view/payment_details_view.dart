import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/core/routes/app_routes.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("PaymentDetails"),),
      body: Center(
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kPaymentDoneView);
          },
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Go To Payment Done View",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            width: 200,
            height: 70,
          ),
        ),
      ),
    );

  }
}
