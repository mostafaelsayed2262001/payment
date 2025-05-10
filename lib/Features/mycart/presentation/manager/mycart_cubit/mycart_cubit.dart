
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'mycart_state.dart';

class MycartCubit extends Cubit<MycartState> {
  MycartCubit() : super(MycartInitial());
}
