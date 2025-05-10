
import 'package:go_router/go_router.dart';
import 'package:payment/Features/mycart/presentation/view/mycart_view.dart';
import 'package:payment/Features/payment_details/presentation/view/payment_details_view.dart';
import 'package:payment/Features/payment_done/presentation/view/payment_done_view.dart';

abstract class AppRouter {
  static const kMyCartView = '/';
  static const kPaymentDetailsView = '/paymentDetailsView';
  static const kPaymentDoneView = '/paymentDoneView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kMyCartView,
        builder: (context, state) => const MycartView(),
      ),
      GoRoute(
        path: kPaymentDetailsView,
        builder: (context, state) =>  PaymentDetailsView(),
      ),
      GoRoute(
        path: kPaymentDoneView,
        builder: (context, state) => const PaymentDoneView(),
      ),

    ],
  );
}