import 'package:flutter/material.dart';
import 'package:flutter_rickandmorty/api/character.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rickandmorty/assets/widgets.dart';
import 'CharacterPost.dart';

class CharactersInList extends StatelessWidget {
  Character char;

  CharactersInList({Key? key, required this.char}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(827, 1787),
        builder: () => Container(
              margin: EdgeInsets.all(40.h),
              padding: EdgeInsets.all(35.sp),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Color.fromARGB(255, 246, 246, 246),
              ),
              height: 460.h,
              width: 730.w,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(char.name,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 37, 38, 40),
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold)),
                          Padding(padding: EdgeInsets.only(top: 30.h)),
                          Row(
                            children: [
                              Widget_Title(
                                  text1: char.status,
                                  text2: char.species,
                                  color: const Color.fromARGB(255, 37, 38, 40)),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 30.h)),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          char.image,
                          height: 200.0.h,
                          width: 200.0.w,
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 40.h)),
                  SizedBox(
                      height: 80.h,
                      width: 700.w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Detalle',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 37, 38, 40),
                                  fontSize: 30.sp),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CharacterPost(char: char)));
                        },
                      )),
                ],
              ),
            ));
  }
}
