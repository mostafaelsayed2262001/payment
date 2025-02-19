import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:payment/Features/mycart/presentation/view/widget/payment_check_button.dart';
import 'package:payment/Features/payment_details/presentation/view/widget/item_selection_pay.dart';
import 'package:payment/Features/payment_details/presentation/view/widget/payment_widget.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/utils/custom_app_bar.dart';
import 'package:sizer/sizer.dart';

class PaymentDetailsView extends StatefulWidget {
  PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  final List<String> image = const [
    "assets/paymentcard/creditIcon.png",
    "assets/paymentcard/paypal.png",
    "assets/paymentcard/macpay.png"
  ];
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, title: "Payment Details"),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
                alignment: AlignmentDirectional.center,
                height: 8.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5.w,
                  ),
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          isActive = index;
                        });
                      },
                      child: itemSelectionPayIcon(
                          asset: image[index], isActive: isActive == index)),
                  itemCount: image.length,
                ),
              ),
              PaymentDataWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: paymentCheckButton(context, title: "Pay", onTap: () {
                  GoRouter.of(context).push(AppRouter.kPaymentDoneView);
                }),
              )
            ],
          ),
        ));
  }
}
