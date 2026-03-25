import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widget/app_text_feild.dart';
import '../../logic/cubit/payment_cubit.dart';
import '../../logic/cubit/payment_state.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return           BlocConsumer<PaymentCubit,PaymentState>(


        builder: (BuildContext context, PaymentState state) {

          return  AppTextFeild(
            isLoading: state is PaymentLoading ? true : false,
            titlel: 'Continue',
          );
        }
        , listener: (BuildContext context, PaymentState state) {
      if (state is PaymentSuccess){
        return context.go(Routes.thankYouScreen);

      }if(state is PaymentFailure){
        SnackBar snackBar =SnackBar(content: Text(state.errorMessage));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
    );

  }
}
