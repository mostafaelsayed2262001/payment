import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/Features/mycart/data/repositories/mycart_repo_imp.dart';
import 'package:payment/Features/mycart/presentation/manager/mycart_cubit/mycart_cubit.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/utils/app_keys.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = AppKeys.stripePublishableKey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MycartCubit(MyCartRepoImp()),
      child: Sizer(builder: (context, orientation, screenType) {
        return MaterialApp.router(
          title: 'Flutter payment',


          debugShowCheckedModeBanner: false,
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: AppRouter.router,
        );
      }
      ),
    );
  }
}
//GoRouter.of(context).push(AppRouter.kHomeView);
//paymentIntentObject create  payment intent(amount -currency)
//init payment sheet (paymentIntentClientSecret)
//present the payment sheet