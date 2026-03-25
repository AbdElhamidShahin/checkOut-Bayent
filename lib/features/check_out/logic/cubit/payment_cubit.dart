import 'package:checkout_payment_ui/features/check_out/data/repos/chekout_repo.dart';
import 'package:checkout_payment_ui/features/check_out/logic/cubit/payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/payment_intent_input_model.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final ChekoutRepo chekoutRepo;

  PaymentCubit(this.chekoutRepo): super(PaymentIninial());
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var data = await chekoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l) {
      emit(PaymentFailure(l.errorMessage));
    }, (r) {
      emit(PaymentSuccess());
    });
  }

  @override
  void onChange(Change<PaymentState> change) {
    super.onChange(change);
  }
}
