import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
          backgroundColor: Colors.pink,
          title: new Center(
            child: new Text("Profil"),
          )
      ),

      body: Center(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: new Image.asset('img/dika.jpg',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "I Putu Andika Putra", style: TextStyle(color: Colors.white, fontSize: 23),),
              Text(
                "1815051110",style: TextStyle(color: Colors.white,),),
              Card(
                child: Row(
                  children:<Widget> [
                    Expanded(
                      child: Card(
                          color: Colors.black,
                          child: Column (
                            children: <Widget>[Icon(Icons.my_location, size: 110, color: Colors.pink,),
                              Text('Singaraja',style: TextStyle(color: Colors.white, fontSize: 17.0,),)],
                          )
                      ),
                    ),

                    Expanded(
                      child: Card(
                          color: Colors.black,
                          child: Column (
                            children: <Widget>[Icon(Icons.home, size: 110, color: Colors.pink,),
                              Text('Abiansemal',style: TextStyle(color: Colors.white, fontSize: 17,),)],
                          )
                      ),
                    )
                  ],
                ),
              ),

              Card(
                child: Row(
                  children:<Widget> [
                    Expanded(
                      child: Card(
                          color: Colors.black,
                          child: Column (
                            children: <Widget>[Icon(Icons.music_note, size: 110, color: Colors.pink,),
                              Text('Indie Punk, Seiyuu',style: TextStyle(color: Colors.white, fontSize: 17,), )],
                          )
                      ),
                    ),

                    Expanded(
                      child: Card(
                          color: Colors.black,
                          child: Column (
                            children: <Widget>[Icon(Icons.location_city, size: 110, color: Colors.pink,),
                              Text('Undiksha',style: TextStyle(color: Colors.white, fontSize: 17,),)],
                          )
                      ),
                    )
                  ],
                ),
              ),

            ]
        ),
      ),

    );
  }
}