import 'package:checkout_payment_ui/core/routing/routes.dart';
import 'package:checkout_payment_ui/core/widget/custom_appbar.dart';
import 'package:checkout_payment_ui/features/check_out/data/repos/chekout_repo_impl.dart';
import 'package:checkout_payment_ui/features/check_out/logic/cubit/payment_cubit.dart';
import 'package:checkout_payment_ui/features/check_out/logic/cubit/payment_state.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/custom_details_order_check_out.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/payment_methods.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/payment_methods_bottom_sheet.dart'
    show PaymentMethodsBottomSheet;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/widget/app_text_feild.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          CustomAppbarMyCart(
            title: 'My Cart',
            onPressed: () {},
          ),
          SizedBox(
            height: 12.h,
          ),
          Image.asset("assets/images/basket_image.png"),
          SizedBox(
            height: 24.h,
          ),
          const CustomDetailsOrderCheckOut(),
          SizedBox(
            height: 12.h,
          ),
          AppTextFeild(
            titlel: "Complete Payment",
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                        create: (BuildContext context) =>
                            PaymentCubit(ChekoutRepoImpl()),
                        child: PaymentMethodsBottomSheet());
                  });
              // context.push(Routes.paymentDetails);
            },
          ),
        ],
      ),
    ));
  }
}
