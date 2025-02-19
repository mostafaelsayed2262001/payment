import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/Features/mycart/presentation/view/widget/order_info.dart';
import 'package:payment/Features/mycart/presentation/view/widget/payment_check_button.dart';
import 'package:payment/Features/mycart/presentation/view/widget/total_info.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/widget/text_utils.dart';

class MycartView extends StatelessWidget {
  const MycartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: Text(
        "My Cart",
        style: Styles.style25,
      )),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            spacing: 10,
            children: [
              Image.asset("assets/mycart/cartOrders.png"),
              orderInfo(title: "Order Subtotal", value: r"$27"),
              orderInfo(title: "Discount", value: r"$5"),
              orderInfo(title: "Shipping", value: r"$0"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(),
              ),
              totalInfoRow(title: "Total", value: r"$22.00"),
              paymentCompleteButton(context,
                  title: "Complete Payment",
              )

            ],
          ),
        ),
      ),
    );
  }
}
