import 'package:checkout_payment_ui/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/check_out/payment_details.dart';

abstract class AppRouter {
  static final router =
      GoRouter(initialLocation: Routes.checkOutScreen, routes: [
    GoRoute(
      path: Routes.paymentDetails,
      builder: (BuildContext context, GoRouterState state) =>
          const PaymentDetails(),
    ),
  ]);
}
