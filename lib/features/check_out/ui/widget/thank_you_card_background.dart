import 'package:checkout_payment_ui/features/check_out/ui/widget/thank_you_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'barcode_and_paid_status.dart';

class ThankYouCardBackground extends StatelessWidget {
  const ThankYouCardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  size: 50.sp,
                )),
            SizedBox(
              height: 70.h,
            ),
          ],
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .80,
              decoration: BoxDecoration(
                color: const Color(0xFFEDEDED),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            Positioned(
              top: 60.h,
              left: 0,
              right: 0,
              bottom: 150.h + 40.r,
              child: ThankYouContentBody(),
            ),
            Positioned(
              bottom: 40.h,
              left: 20.w,
              right: 20.w,
              child: BarcodeAndPaidStatus(),
            ),
            Positioned(
              bottom: 150.h,
              left: -20.w,
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: 150.h,
              right: -20.w,
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: 170.h,
              left: 25.w,
              right: 25.w,
              child: CustomPaint(
                painter: DashedLinePainter(),
              ),
            ),
            Positioned(
              top: -60.h,
              left: 0,
              right: 0,
              child: CircleAvatar(
                radius: 60.r,
                backgroundColor: const Color(0xFFEDEDED),
                child: CircleAvatar(
                  radius: 50.r,
                  backgroundColor: const Color(0xFF34A853),
                  child: Icon(Icons.check, color: Colors.white, size: 75.sp),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0xFFB8B8B8)
      ..strokeWidth = 2;

    double dashWidth = 5, dashSpace = 5, startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

