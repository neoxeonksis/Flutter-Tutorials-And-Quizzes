import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'main.dart';

typedef void OnError(Exception exception);

class UsersCodePage extends StatefulWidget {
  @override
  _UsersCodePageState createState() => new _UsersCodePageState();
}

class _UsersCodePageState extends State<UsersCodePage> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();
  }

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    if(SoundResult=="NotMuted") {
      audioCache.play('Music/Tap.mp3');
    }
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: AppBar(
          leading:IconButton(
            icon:Icon(Icons.arrow_back),
            onPressed:(){
              PlayTapSound();
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
            },
          ),
          title:Text("Users Codes"),
        ),
        body:
        ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.contacts),
                      title:Text("Contact List",style:TextStyle(fontSize:15),),
                      subtitle:Text("Submitted By Davi",style:TextStyle(fontSize:13),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Davi_ContactList");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.teal[200],
                    child: ListTile(
                      leading:Icon(Icons.code),
                      title:Text("Submit Yours!",style:TextStyle(fontSize:15),),
                      subtitle:Text("Send Your Code At edapps.contact@gmail.com And The Code Will Be Published  Under Your Name",style:TextStyle(fontSize:13),),
                      trailing:Icon(Icons.arrow_forward_ios),
                    ),
                  ),





                ],
              ),
            ),
          ],
        )
    );
  }



}





