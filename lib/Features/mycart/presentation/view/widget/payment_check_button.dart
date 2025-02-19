import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/Features/mycart/data/model/paymentIntentInputModel.dart';
import 'package:payment/Features/mycart/presentation/manager/mycart_cubit/mycart_cubit.dart';
import 'package:payment/Features/mycart/presentation/view/widget/PaymentMethodsBottomSheet.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/widget/text_utils.dart';

Widget paymentCheckButton(context,
    {required Function() onTap, required String title}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(15)),
        height: MediaQuery
            .of(context)
            .size
            .height * .08,
        width: double.infinity,
        child: Center(
            child: Text(
              title,
              style: Styles.style22,
            ))),
  );
}
///////////   //////////////////////////////////////////////////   //////////
Widget paymentCompleteButton(context, {required String title}) {
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
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              builder: (context) {
                return PaymentMethodsBottomSheet();
              });


    },
    child: Container(
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(15)),
        height: MediaQuery
            .of(context)
            .size
            .height * .08,
        width: double.infinity,
        child: Center(
          child: state is MycartLoading
              ? const CircularProgressIndicator()
              : Text(
            title,
            textAlign: TextAlign.center,
            style: Styles.style22,
          ),
        )),
  );
},);
}
