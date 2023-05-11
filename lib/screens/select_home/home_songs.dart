import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../provider/beat_provider.dart';

class Home_Songs extends StatefulWidget {
  const Home_Songs({Key? key}) : super(key: key);

  @override
  State<Home_Songs> createState() => _Home_SongsState();
}

class _Home_SongsState extends State<Home_Songs> {
  BeatProvider? beatT;
  BeatProvider? beatF;

 @override
  void initState() {
   Provider.of<BeatProvider>(listen: false, context).initmus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    beatT = Provider.of<BeatProvider>(listen: true, context);
    beatF = Provider.of<BeatProvider>(listen: false, context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff181A20),
        body: ListView.builder(
          itemCount: beatF!.musicitems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: InkWell(
                onTap: () {

                  beatT!.clickedmusic = index;
                  Navigator.pushNamed(context, 'openmusic',arguments: index);

                },
                child: Container(
                  height: 7.h,
                  width: 95.w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      SizedBox(width: 2.w),
                      Container(
                        height: 6.h,
                        width: 6.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "${beatT!.musicitems[index].songbg}"),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "${beatT!.musicitems[index].songname}",
                        style: TextStyle(
                            fontSize: 15,
                                color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
