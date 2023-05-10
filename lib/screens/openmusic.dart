import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_beat/provider/beat_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Open_Music extends StatefulWidget {
  const Open_Music({Key? key}) : super(key: key);

  @override
  State<Open_Music> createState() => _Open_MusicState();
}

class _Open_MusicState extends State<Open_Music> {

  BeatProvider? beatT;
  BeatProvider? beatF;

  @override
  Widget build(BuildContext context) {

    beatT = Provider.of<BeatProvider>(context,listen: true);
    beatF = Provider.of<BeatProvider>(context,listen: false);

    int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back),iconSize: 25,color: Colors.white,onPressed: () => Navigator.pop(context),),
          actions: [Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.adjust_rounded,size: 25,color: Colors.white,),
          )],
        ),
        //backgroundColor: Colors.transparent,
        backgroundColor: Colors.black,

        body: Column(

          children: [
            SizedBox(height: 30,),
            Container(
              height: 40.h,width: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                //image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"),fit: BoxFit.fill)
                image: DecorationImage(image: NetworkImage("${beatT!.musicitems[index].songbg}"),fit: BoxFit.fill)
              ),
            ),

            // Image.network("${beatT!.musicitems[index].songbg}",height: 300,width: 300,fit: BoxFit.fill,),

           Spacer(),


           PlayerBuilder.currentPosition(
             player: beatF!.beatobject,
             builder: (context, position) {
               return Column(
                 children: [
                   Slider(
                     max:beatT!.musiclength.inSeconds.toDouble(),
                     value: position.inSeconds.toDouble(),

                     onChanged: (value) {

                       position = Duration(seconds: value.toInt());
                       beatF!.beatobject.seek(position);

                     },

                     thumbColor: Colors.orange,
                     activeColor: Colors.orange,
                     inactiveColor: Colors.orange.shade100,
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("${position}",style: TextStyle(fontSize: 15,color: Colors.white),),
                       Text("${beatT!.musiclength}",style: TextStyle(fontSize: 15,color: Colors.white),),
                     ],),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       IconButton(onPressed: (){
                         beatF!.beatprevious();
                       }, icon: Icon(Icons.skip_previous_rounded,color: Colors.white,size: 30,)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.replay_30_rounded,color: Colors.white,size: 30,)),
                       FloatingActionButton(onPressed: () {

                         beatT!.beatclickwork();

                       },
                         child: Icon(beatT!.isplay == false ? Icons.play_arrow_rounded: Icons.pause,color: Colors.black,size: 45,),
                         backgroundColor: Colors.orange,


                       ),
                       IconButton(onPressed: (){}, icon: Icon(Icons.forward_30_rounded,color: Colors.white,size: 30,)),
                       IconButton(onPressed: (){
                         beatF!.beatnext();
                       }, icon: Icon(Icons.skip_next_rounded,color: Colors.white,size: 30,)),



                     ],
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       IconButton(onPressed: (){}, icon: Icon(Icons.av_timer_rounded,color: Colors.white,size: 30,)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.timer_outlined,color: Colors.white,size: 30,)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.cast,color: Colors.white,size: 30,)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded,color: Colors.white,size: 30,)),



                     ],
                   ),
                 ],
               );
             },

           ),
         
            
            Text("^\nLyrics",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),

            SizedBox(height: 25),



          ],
        ),

      ),
    );
  }
}
