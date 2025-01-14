import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/core/routes/app_routes.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PaymentDone"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kMyCartView);
          },
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Go To My Cart View",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
            width: 200,
            height: 70,
          ),
        ),
      ),
    );
  }
}
