import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/core/routes/app_routes.dart';

class MycartView extends StatelessWidget {
  const MycartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Cart"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kPaymentDetailsView);
          },
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Go To Payment Details View",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
            width: 200,
            height: 70,
          ),
        ),
      ),
    );
  }
}
