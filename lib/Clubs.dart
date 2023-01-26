import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Clubs_page(),
    debugShowCheckedModeBanner: false,
  ));
}

class Clubs_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
        children: [
          IconButton(onPressed: () {} , icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          Text("Club's", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
        ],
      ),
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
    );
  }

}