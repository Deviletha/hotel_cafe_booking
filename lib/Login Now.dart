import 'package:flutter/material.dart';

class loginnow extends StatefulWidget {
  @override
  _loginnowState createState() => _loginnowState();
}

class _loginnowState extends State<loginnow> {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              "Login Now",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 100),
            child: Text(
              "Please login to continue",
              style: TextStyle(fontSize: 15, color: Colors.black45),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "johndoe@gmail.com",
                  labelText: 'E-mail ID or Mobile Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              textInputAction: TextInputAction.next,
              validator: (uname) {
                if (uname!.isEmpty || !uname.contains('@')) {
                  return 'Enter a valid Email ID';
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              obscureText: showpass,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(
                        showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      )),
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              textInputAction: TextInputAction.done,
              validator: (Password) {
                if (Password!.isEmpty || Password.length < 6) {
                  return "Enter a valid Password, length should be greater than 6";
                } else {
                  return null;
                }
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: Text("Remember me",
                    style: TextStyle(fontSize: 15, color: Colors.black54)),
                onPressed: () {},
              ),
              TextButton(
                child: Text("Forgot password?",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 70),
            child: SizedBox(
              width: 450,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login to my Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text("Login with",style: TextStyle(fontSize: 20,color: Colors.black54),),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                height: 40,
                width: 150,
                child: Center(child: Image.asset("Assets/images/Facebook.png")),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                height: 40,
                width: 150,
                child: Center(child: Image.asset("Assets/images/Google.png")),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Don't have an account?",style: TextStyle(fontSize: 15, color: Colors.black45)),
              SizedBox(
                width: 5,
              ),
              TextButton(
                  child: Text("Register now",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => sign_up_page()));
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
