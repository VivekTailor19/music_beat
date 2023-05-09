import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_beat/provider/beat_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Beat_Favorite extends StatefulWidget {
  const Beat_Favorite({Key? key}) : super(key: key);

  @override
  State<Beat_Favorite> createState() => _Beat_FavoriteState();
}

class _Beat_FavoriteState extends State<Beat_Favorite> {

  BeatProvider? beatT;
  BeatProvider? beatF;

  @override
  Widget build(BuildContext context) {

    beatT = Provider.of<BeatProvider>(context,listen:true);
    beatF = Provider.of<BeatProvider>(context,listen:false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            "Favorites",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          leading: Icon(
            Icons.audiotrack,
            color: Colors.amber,
            size: 30,
          ),

        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${beatT!.likeitems.length} favorites",style: TextStyle(fontSize: 15,color: Colors.white),),
              Divider(thickness: 0.8,color: Colors.white60,height: 20,),

              Expanded(
                child: ListView.builder(
                  itemCount: beatF!.likeitems.length,
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
                                            "${beatT!.likeitems[index].songbg}"),
                                        fit: BoxFit.fill)),
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                "${beatT!.likeitems[index].songname}",
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
            ],
          ),
        ),
      ),
    );
  }
}
