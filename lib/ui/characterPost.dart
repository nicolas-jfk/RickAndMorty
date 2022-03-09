import 'package:flutter/material.dart';
import 'package:flutter_rickandmorty/api/character.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterPost extends StatelessWidget {
  Character char;

  CharacterPost({Key? key, required this.char}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 14, 40),
        title: Text(char.name),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          ClipRRect(
            child: Image.network(
              char.image,
              height: 700.h,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30.h)),
          Container(
            margin: EdgeInsets.all(40.h),
            padding: EdgeInsets.all(35.sp),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Color.fromARGB(255, 246, 246, 246),
            ),
            height: 460.h,
            width: 730.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('gender: ' + char.gender,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 38, 40),
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 30.h)),
                Text('Origin location ' + char.originName,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 38, 40),
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 30.h)),
                Text('Actual location: ' + char.locationName,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 38, 40),
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 30.h)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
