import 'package:flutter/material.dart';
import 'package:ngan/src/resource/Login_page.dart';
import 'package:ngan/src/resource/Signup_page.dart';



class WelcomePage extends StatefulWidget {
  const   WelcomePage({Key? key}) : super (key:key);
  @override
  State<StatefulWidget> createState() {
    return _WelcomePage();
  }
}

class _WelcomePage extends State<WelcomePage> {
  double _width=300;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: _width,
        padding: EdgeInsets.fromLTRB(30, 80, 30, 30),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
              child: Text(
                "BackSlash Flutter provides extraordinary flutter tutorials. Do Subcribes!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Image.asset('assets/welcome.png',
                width: 320, height: 320,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(90))
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text("Login",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(90))
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text("Sign up",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





