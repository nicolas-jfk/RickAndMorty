import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Widget_Title extends StatelessWidget {
  String text1;
  String text2;
  Color color;
  Widget_Title(
      {Key? key, required this.text1, required this.text2, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text1 == 'Alive'
            ? Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 50.sp,
                    color: Colors.green,
                  ),
                  Text(text1,
                      style: TextStyle(
                          color: color,
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold)),
                ],
              )
            : text1 == 'unknown'
                ? Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 50.sp,
                        color: Colors.grey,
                      ),
                      Text(text1,
                          style: TextStyle(
                              color: color,
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                : Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 50.sp,
                        color: Colors.red,
                      ),
                      Text(text1,
                          style: TextStyle(
                              color: color,
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
        Container(
          margin: const EdgeInsets.only(top: 6, bottom: 6),
          width: 60.w,
          height: 1.h,
          decoration: BoxDecoration(color: color),
        ),
        Text(
          text2,
          style: TextStyle(color: color, fontSize: 25.sp),
        )
      ],
    );
  }
}
