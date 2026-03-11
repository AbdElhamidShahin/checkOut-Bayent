import 'package:checkout_payment_ui/features/check_out/ui/widget/payment_Item_Info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouContentBody extends StatelessWidget {
  const ThankYouContentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 36.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          Text("Thank you!",
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500)),
          Text("Your transaction was successful",
              style: TextStyle(fontSize: 18.sp, color: Colors.black54)),
          SizedBox(height: 32.h),
          const PaymentItemInfo(title: "Date", value: "01/24/2023"),
          const PaymentItemInfo(title: "Time", value: "10:15 AM"),
          const PaymentItemInfo(title: "To", value: "Sam Louis"),
          Divider(height: 32.h, thickness: 1.5),
          const PaymentItemInfo(
              title: "Total", value: r"$50.97", isTotal: true),
          SizedBox(height: 20.h),
          // Payment Card Info Container
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              children: [
              SvgPicture.asset("assets/images/logo.svg"),
                SizedBox(width: 15.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Credit Card", style: TextStyle(fontSize: 16.sp)),
                    Text("Mastercard **78",
                        style: TextStyle(color: Colors.grey, fontSize: 14.sp)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

