import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/Features/mycart/data/model/paymentIntentInputModel.dart';
import 'package:payment/Features/mycart/presentation/manager/mycart_cubit/mycart_cubit.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/widget/text_utils.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
    required this.isPaypal,
  });

  final bool isPaypal;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MycartCubit, MycartState>(
      listener: (context, state) {
      // TODO: implement listener
      if (state is MycartSuccess) {
        GoRouter.of(context).push(AppRouter.kPaymentDoneView);
      } else if (state is MycartFailure) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              state.errMessage,
            )));
      }
    },

      builder: (context, state) {
        return InkWell(
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
            PaymentIntentInputModel(amount: "2200", currency: "AED");
            BlocProvider.of<MycartCubit>(context)
                .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
              height: MediaQuery.of(context).size.height * .08,
              width: double.infinity,
              child: Center(
                child: state is MycartLoading
                    ? const CircularProgressIndicator()
                    : Text(
                  "Continue",
                  textAlign: TextAlign.center,
                  style: Styles.style22,
                ),
              )),
        );
      },
    );
  }



}