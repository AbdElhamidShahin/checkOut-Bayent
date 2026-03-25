import 'package:checkout_payment_ui/core/units/api_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'core/routing/app_router.dart';

void main() async {

  Stripe.publishableKey= ApiConstants.publishableKey;
  await ScreenUtil.ensureScreenSize();



runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: AppRouter.router,

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
