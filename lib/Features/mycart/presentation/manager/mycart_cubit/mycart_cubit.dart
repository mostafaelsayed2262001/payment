import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment/Features/mycart/data/model/paymentIntentInputModel.dart';
import 'package:payment/Features/mycart/data/repositories/mycart_repo.dart';

part 'mycart_state.dart';

class MycartCubit extends Cubit<MycartState> {
  MycartCubit(this.myCartRepo) : super(MycartInitial());
  final MyCartRepo myCartRepo;

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(MycartLoading());
    var data = await myCartRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l) => emit(MycartFailure(errMessage: l.errMessage)),
        (r) => emit(MycartSuccess()));
  }
  @override
  void onChange(Change<MycartState> change) {
    debugPrint(change.toString());
    super.onChange(change);
  }
}
