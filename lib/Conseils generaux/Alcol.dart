import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Alcol extends StatefulWidget {

  @override
  State<Alcol> createState() => _AlcolState();
}

class _AlcolState extends State<Alcol> {
  late YoutubePlayerController _controller;
  void runYoutubePlayer(){
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=Vl-wmC4Hs-w')!,
        flags: YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: false,
        )
    );
  }
  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: _controller),
        builder: (context,player){
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.cyan[900],
              title: Text(
                'Alcol',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(0, 0, 40, 25),
                  child: Container(

                  ),
                ),

              ),
            ),
            body: Column(
              children: [
                Center(
                  child: Padding(
                    padding:  EdgeInsets.only(top:HeightScreen/20 ),
                    child: Text(
                      "L'alcol et son impact sur le cancer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),

                Padding(
                  padding:  EdgeInsets.only(left: WidthScreen/50,right: WidthScreen/55),
                  child: player,
                ),
              ],
            ),
          );
        },
    );
  }


}
