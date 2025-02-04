import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_details_state.dart';

class PaymentDetailsCubit extends Cubit<PaymentDetailsState> {
  PaymentDetailsCubit() : super(PaymentDetailsInitial());


}
