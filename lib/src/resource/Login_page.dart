

import 'package:flutter/material.dart';
import 'package:ngan/src/resource/Signup_page.dart';
import 'package:ngan/src/resource/Welcome_page.dart';



class LoginPage extends StatefulWidget {
  const   LoginPage({Key? key}) : super (key:key);
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  bool _showPass = true ;
  String username2='';
  String password2='';
  TextEditingController _userController1 = new TextEditingController();
  TextEditingController _passController1 = new TextEditingController();
  var _userErr1 = "username không hợp lệ";
  var _passErr1 = "mật khẩu phải trên 6 ký tự";
  var _userInvalid1 = false;
  var _passInvalid1 = false;
  double _width=300;

  get futureValue => null;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      body: Container(
        width: _width,
        padding: EdgeInsets.fromLTRB(15, 100, 15, 0),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: Container(
                child: Text(
                  "Login to your account",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ),
            Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                        onChanged: (String newUsername) {
                          print(newUsername);
                          username2 = newUsername;
                        },
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        controller: _userController1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:'Username',
                            errorText: _userInvalid1 ? _userErr1 : null,
                            labelStyle: TextStyle(color: Colors.grey, fontSize: 20)
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: <Widget> [
                          TextField(
                            onChanged: (newpassword) {
                              print(newpassword);
                              password2= newpassword;
                            },
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            controller: _passController1,
                            obscureText: _showPass,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText:'Password',
                                errorText: _passInvalid1 ? _passErr1 : null,
                                labelStyle: TextStyle(color: Colors.grey, fontSize: 20)
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: GestureDetector(
                              onTap: OnToggleShowPass,
                                child: Text(
                                  _showPass ? "show":"hide",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
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
                onPressed: OnClickedLogin,
                child: Text("Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account",
                    style: TextStyle(fontSize: 15, color: Colors.grey,),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text("Sign up",
                      style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Image.asset('assets/background.png'),
            ),
          ],
        ),
      ),
    );
  }

  void showMyAlertDialog(BuildContext context) {
    AlertDialog dialog = AlertDialog(
      title: Text("Confirm Login!"),
      content: Text("What page do you want to go"),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      actions: [
        ElevatedButton(
            child: Text("Welcome"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              ); // Return true
            }
        ),
        ElevatedButton(
            child: Text("Sign up"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage(),),
              ); // Return false
            }
        ),
        ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage(),),
              ); // Return false
            }
        ),
      ],
    );
    Future futureValue = showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        },
    );
    futureValue.then( (value) {
    print("Return value: " + value.toString()); // true/false
    });
  }
  void OnToggleShowPass(){
    setState(() {
      _showPass = !_showPass;
    });
  }
  void OnClickedLogin(){
    setState(() {
        if (_userController1.text.length <3)
        { _userInvalid1 = true ; }
        else {_userInvalid1 = false;}
        if (_passController1.text.length <6)
        { _passInvalid1 = true; }
        else { _passInvalid1 = false;}
        if (_userInvalid1==false&&_passInvalid1==false){
          showMyAlertDialog(context);
        };
    });
  }
}
