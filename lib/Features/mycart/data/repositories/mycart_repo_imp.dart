import 'package:dartz/dartz.dart';
import 'package:payment/Features/mycart/data/model/paymentIntentInputModel.dart';
import 'package:payment/Features/mycart/data/repositories/mycart_repo.dart';
import 'package:payment/core/errors/Failures.dart';
import 'package:payment/core/network/stripe_services.dart';

class MyCartRepoImp extends MyCartRepo {
  final StripeServices stripeServices= StripeServices();
  @override
  Future<Either<Failure, void>> makePayment  (
      {required PaymentIntentInputModel paymentIntentInputModel}) async{
    // TODO: implement makePayment
    try{
      await stripeServices.makePayment(paymentIntentInputModel);
      return const Right(null);
    }catch(e){
      return Left(ServerFailure(errMessage: e.toString()));
    }
  }
}
