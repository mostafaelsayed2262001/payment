import 'package:dartz/dartz.dart';
import 'package:payment/Features/mycart/data/model/paymentIntentInputModel.dart';
import 'package:payment/core/errors/Failures.dart';

abstract class MyCartRepo{
Future<Either<Failure,void>>makePayment(
    {required PaymentIntentInputModel paymentIntentInputModel});
}
