import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_continar_payment_method.dart';
import 'custom_credit_card.dart';

class PaymentMethods extends StatefulWidget {
  PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomContinarPaymentMethod(
                image: "assets/images/card.svg",
                isSelect: selectIndex == 0,
                onTap: () {
                  setState(() {
                    selectIndex = 0;
                  });
                },
              ),
              CustomContinarPaymentMethod(
                image: "assets/images/paypal.svg",
                isSelect: selectIndex == 1,
                onTap: () {
                  setState(() {
                    selectIndex = 1;
                  });
                },
              ),
              CustomContinarPaymentMethod(
                image: "assets/images/SVGRepo_iconCarrier.svg",
                isSelect: selectIndex == 2,
                onTap: () {
                  setState(() {
                    selectIndex = 2;
                  });
                },
              ),
            ],
          ),
        ),
        CustomCreditCard(),
      ],
    );
  }
}

