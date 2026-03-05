import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/units/styles.dart';

class CustomDetailsOrderCheckOut extends StatelessWidget {
  const CustomDetailsOrderCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowTitle(title: 'Order Subtotal', balance: '\$42.97'),
        RowTitle(title: 'Discount', balance: '\$0'),
        RowTitle(title: 'Shipping', balance: '\$8'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
          child: const Divider(
            height: 3,
            color: Color(0xFFC7C7C7),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: textStyleFontSize24FontWeightSemiBold,
              ),
              Text(
                "\$50.97",
                style: textStyleFontSize24FontWeightSemiBold,
              ),
            ],
          ),
        )
      ],
    );
  }
}

Padding RowTitle({required String title, required String balance}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: textStyleFontSize18FontWeightRegular,
      ),
      Text(
        balance,
        style: textStyleFontSize18FontWeightRegular,
      ),
    ]),
  );
}
