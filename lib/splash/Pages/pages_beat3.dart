import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_beat/splash/splashprovider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Pages_Beat3 extends StatefulWidget {
  const Pages_Beat3({Key? key}) : super(key: key);

  @override
  State<Pages_Beat3> createState() => _Pages_Beat3State();
}

class _Pages_Beat3State extends State<Pages_Beat3> {

  SplashProvider? spT;
  SplashProvider? spF;

  @override
  Widget build(BuildContext context) {

    spT = Provider.of<SplashProvider>(context);
    spF = Provider.of<SplashProvider>(context,listen: false);
    spT!.pageno = 2;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(height: 60.h,
              width: 100.w,
              color: Colors.amber,
              //decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/s/setting_offer.png"))),
              child: Image.asset(
                "${spT!.pageitems[spT!.pageno].pagesimg}",
                height: 60.h,
                width: 100.w,
                fit: BoxFit.fitWidth,

              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Color(0xff181A20),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      "${spT!.pageitems[spT!.pageno].pagestext}",
                      style: TextStyle(fontSize: 35,color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    AnimatedSmoothIndicator(

                      activeIndex: spT!.pageno,
                      count: spF!.pageitems.length,
                      effect: ExpandingDotsEffect(
                        spacing: 5,
                        activeDotColor: Colors.orange,
                        dotColor: Colors.white54,
                        dotHeight: 10,
                        dotWidth: 10,
                        radius: 5,
                      ),
                    ),

                    SizedBox(height: 20,),

                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "first");


                      },
                      child: Container(height: 60,width: 275,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [
                              BoxShadow(color: Colors.amber,blurRadius: 10),
                              ],
                            color: Colors.orange

                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "${spT!.pageitems[spT!.pageno].pagebutton}",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
