import 'dart:convert';

class PaymentIntentResponseModel {
  String id;
  String object;
  int amount;
  int amountCapturable;

  int amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;

  dynamic canceledAt;
  dynamic cancellationReason;
  String captureMethod;
  String clientSecret;
  String confirmationMethod;

  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;


  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;


  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;

  dynamic transferData;
  dynamic transferGroup;

  PaymentIntentResponseModel({
    required this.id,
    required this.object,
    required this.amount,
    required this.amountCapturable,

    required this.amountReceived,
    required this.application,
    required this.applicationFeeAmount,

    required this.canceledAt,
    required this.cancellationReason,
    required this.captureMethod,
    required this.clientSecret,
    required this.confirmationMethod,


  });

  factory PaymentIntentResponseModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntentResponseModel(
      id: json['id'],
      object: json['object'],
      amount: json['amount'],
      amountCapturable: json['amount_capturable'],

      amountReceived: json['amount_received'],
      application: json['application'],
      applicationFeeAmount: json['application_fee_amount'],


      canceledAt: json['canceled_at'],
      cancellationReason: json['cancellation_reason'],
      captureMethod: json['capture_method'],
      clientSecret: json['client_secret'],
      confirmationMethod: json['confirmation_method'],


    );
  }
}



