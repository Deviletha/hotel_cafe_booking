import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Home(),
    debugShowCheckedModeBanner: false,));
}

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HC_HomeState();
}

class _HC_HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:
            Text("Home", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          Container(
            width: 60,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1616874535244-73aea5daadb9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8M3x8fGVufDB8fHx8&w=1000&q=80"),fit: BoxFit.fill)),
          )
        ],

      ),
      body:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10,left: 5),
            child: Text("Hello Ann Zara",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w500
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 5),
            child: Text('Welcome Here,Choose Your Interest',
              style: TextStyle(
                  color: Color(0xff004d40),
                  fontSize:15,fontWeight: FontWeight.w400
              ),),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Search destination"
            ),
          )
        ],
      ),

    );
  }
}