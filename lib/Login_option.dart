import 'package:flutter/material.dart';
import 'Login Now.dart';

class loginpagee extends StatefulWidget {
  @override
  State<loginpagee> createState() => _loginpageeState();
}

class _loginpageeState extends State<loginpagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Center(
          child: Text(
            "Login For Best Services",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("Assets/images/ladydeveloper.jpg"),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 45, bottom: 15),
            child: SizedBox(
              width: 450,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginnow()));
                },
                child: Text(
                  "Login now",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: SizedBox(
              width: 450,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Continue with Facebook",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ),
          TextButton(
            child: Text("Signup with Email",
                style: TextStyle(fontSize: 15, color: Colors.black45)),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => sign_up_page()));
            },
          ),
        ],
      ),
    );
  }
}
