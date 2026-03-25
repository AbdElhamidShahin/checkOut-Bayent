import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../model/payment_intent_input_model.dart';

abstract class ChekoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
