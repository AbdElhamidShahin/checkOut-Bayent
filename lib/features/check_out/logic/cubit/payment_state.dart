abstract class PaymentState {}

class PaymentIninial extends PaymentState {}

class PaymentLoading extends PaymentState {}

class PaymentSuccess extends PaymentState {}

class PaymentFailure extends PaymentState {
  final String errorMessage;

  PaymentFailure( this.errorMessage);

}
