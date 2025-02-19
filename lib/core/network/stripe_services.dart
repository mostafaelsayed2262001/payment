import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/Features/mycart/data/model/paymentIntentInputModel.dart';
import 'package:payment/Features/mycart/data/model/paymentIntentResponse.dart';
import 'package:payment/core/network/services.dart';
import 'package:payment/core/utils/app_keys.dart';

class StripeServices {
  final ApiServices apiServices = ApiServices();

  Future<PaymentIntentResponseModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiServices.post(

        body: paymentIntentInputModel.toJson(),
contentType: Headers.formUrlEncodedContentType,
        url: "https://api.stripe.com/v1/payment_intents",

        token: AppKeys.secretKey
    );
    var paymentIntentResponse =
        PaymentIntentResponseModel.fromJson(response.data);
    return paymentIntentResponse;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntentClientSecret,
            merchantDisplayName: "Mostafa Soliman"));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(PaymentIntentInputModel paymentIntentInputModel) async {
    var paymentIntentResponse =
        await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentResponse.clientSecret!);
    await displayPaymentSheet();
  }
}
