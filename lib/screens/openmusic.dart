import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Open_Music extends StatefulWidget {
  const Open_Music({Key? key}) : super(key: key);

  @override
  State<Open_Music> createState() => _Open_MusicState();
}

class _Open_MusicState extends State<Open_Music> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Column(

          children: [
            SizedBox(height: 50,),

            Image.network("https://play-lh.googleusercontent.com/fZEWU6MFAUA-Sg29r2Ek78P9cZVr7M_Q_DHkaQzWgWUFkDw38A166h6kjmXS2ACpk_A",height: 300,width: 300,fit: BoxFit.fill,),

           Spacer(),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous_rounded,color: Colors.white,size: 30,)),
               IconButton(onPressed: (){}, icon: Icon(Icons.replay_30_rounded,color: Colors.white,size: 30,)),
               FloatingActionButton(onPressed: () {

               },
                 child: Icon(Icons.play_arrow_rounded,color: Colors.black,size: 45,),
                 backgroundColor: Colors.amber,


               ),
               IconButton(onPressed: (){}, icon: Icon(Icons.forward_30_rounded,color: Colors.white,size: 30,)),
               IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_rounded,color: Colors.white,size: 30,)),



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
            
            Text("^\nLyrics",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),

            SizedBox(height: 25),



          ],
        ),

      ),
    );
  }
}
