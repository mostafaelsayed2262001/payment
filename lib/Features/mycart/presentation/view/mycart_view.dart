import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/Features/mycart/presentation/view/widget/order_info.dart';
import 'package:payment/Features/mycart/presentation/view/widget/payment_check_button.dart';
import 'package:payment/Features/mycart/presentation/view/widget/total_info.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/utils/custom_app_bar.dart';
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          spacing: 10,
          children: [
            Image.asset("assets/mycart/cartOrders.png"),
            orderInfo(title: "Order Subtotal", value: r"$42.97"),
            orderInfo(title: "Discount", value: r"$0"),
            orderInfo(title: "Shipping", value: r"$8"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            totalInfoRow(title: "Total", value: r"$50.97"),
            paymentCheckButton(context,
                title: "Complete Payment",
                onTap: () =>
                    GoRouter.of(context).push(AppRouter.kPaymentDetailsView))
          ],
        ),
      ),
    );
  }
}
