import 'amount_details.dart';
import 'automatic_payment_methods.dart';
import 'payment_method_options.dart';
import 'tip_model.dart';

class PaymentIntentModel {
  final String? id;
  final int? amount;
  final AmountDetails? amountDetails;
  final int? amountReceived;
  final AutomaticPaymentMethods? automaticPaymentMethods;
  final String? captureMethod;
  final String? clientSecret;
  final String? confirmationMethod;
  final int? created;
  final String? currency;
  final bool? livemode;
  final Tip? metadata;
  final PaymentMethodOptions? paymentMethodOptions;
  final List<String>? paymentMethodTypes;
  final String? status;

  const PaymentIntentModel({
    this.id,
    this.amount,
    this.amountDetails,
    this.amountReceived,
    this.automaticPaymentMethods,
    this.captureMethod,
    this.clientSecret,
    this.confirmationMethod,
    this.created,
    this.currency,
    this.livemode,
    this.metadata,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
    this.status,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) =>
      PaymentIntentModel(
        id: json['id'],
        amount: json['amount'],
        amountDetails: json['amount_details'] != null
            ? AmountDetails.fromJson(json['amount_details'])
            : null,
        amountReceived: json['amount_received'],
        automaticPaymentMethods: json['automatic_payment_methods'] != null
            ? AutomaticPaymentMethods.fromJson(
                json['automatic_payment_methods'])
            : null,
        captureMethod: json['capture_method'],
        clientSecret: json['client_secret'],
        confirmationMethod: json['confirmation_method'],
        created: json['created'],
        currency: json['currency'],
        livemode: json['livemode'],
        metadata:
            json['metadata'] != null ? Tip.fromJson(json['metadata']) : null,
        paymentMethodOptions: json['payment_method_options'] != null
            ? PaymentMethodOptions.fromJson(json['payment_method_options'])
            : null,
        paymentMethodTypes:
            (json['payment_method_types'] as List?)?.cast<String>(),
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'amount': amount,
        'amount_details': amountDetails?.toJson(),
        'amount_received': amountReceived,
        'automatic_payment_methods': automaticPaymentMethods?.toJson(),
        'capture_method': captureMethod,
        'client_secret': clientSecret,
        'confirmation_method': confirmationMethod,
        'created': created,
        'currency': currency,
        'livemode': livemode,
        'metadata': metadata?.toJson(),
        'payment_method_options': paymentMethodOptions?.toJson(),
        'payment_method_types': paymentMethodTypes,
        'status': status,
      };
}
