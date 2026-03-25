import 'package:checkout_payment_ui/core/errors/failure.dart';
import 'package:checkout_payment_ui/core/units/stripe_service.dart';
import 'package:checkout_payment_ui/features/check_out/data/model/payment_intent_input_model.dart';
import 'package:checkout_payment_ui/features/check_out/data/repos/chekout_repo.dart';
import 'package:dartz/dartz.dart';

class ChekoutRepoImpl implements ChekoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);

      return right(null);
    } catch (e) {
      return left(serverFailure(errorMessage: e.toString()));
    }
  }
}
