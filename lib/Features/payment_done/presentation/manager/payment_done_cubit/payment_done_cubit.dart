import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_done_state.dart';

class PaymentDoneCubit extends Cubit<PaymentDoneState> {
  PaymentDoneCubit() : super(PaymentDoneInitial());
}
