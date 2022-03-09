import 'package:flutter/material.dart';
import 'package:flutter_rickandmorty/api/DBinfo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'charactersInList.dart';
import 'spinnerwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? numEpisodes = 0;
  DBinfo info = DBinfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'lib/assets/alfredlogo.png',
          width: 100,
          height: 100,
        ),
        backgroundColor: const Color.fromARGB(255, 10, 14, 40),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: info.DBinformationEpisode(),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                numEpisodes = snapshot.data?.length;
                return BannerEpisodes(numEpisodes);
              }
              return BannerEpisodes(numEpisodes);
            },
          ),
          Expanded(
            child: FutureBuilder(
                future: info.DBinformationCharacter(),
                builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        Expanded(
                            child: ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            var charact = snapshot.data![index];
                            return CharactersInList(char: charact);
                          },
                        ))
                      ],
                    );
                  } else {
                    return SpinnerWidget();
                  }
                }),
          )
        ],
      ),
    );
  }
}

Widget BannerEpisodes(int? numEpisodes) {
  return ScreenUtilInit(
      designSize: const Size(827, 1787),
      builder: () => Container(
            margin: EdgeInsets.all(40.h),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Color.fromARGB(255, 246, 246, 246),
            ),
            height: 100,
            width: 730.w,
            child: Column(
              children: [
                Text('La serie en numeros',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 38, 40),
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 30.h)),
                Text('Numero de episodeos: ' + numEpisodes.toString(),
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 38, 40),
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 30.h)),
              ],
            ),
          ));
}
