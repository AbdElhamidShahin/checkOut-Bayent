import 'package:checkout_payment_ui/core/units/api_constants.dart';
import 'package:checkout_payment_ui/core/units/api_service.dart';
import 'package:checkout_payment_ui/features/check_out/data/model/payment_intent_input_model.dart';
import 'package:checkout_payment_ui/features/check_out/data/model/payment_intent_model.dart';


class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        url: ApiConstants.Url,
        body: paymentIntentInputModel.toJson(),
        token: ApiConstants.secretKey);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
}
