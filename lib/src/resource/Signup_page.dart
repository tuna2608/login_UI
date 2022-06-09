import 'package:flutter/material.dart';
import 'package:ngan/src/resource/Login_page.dart';


class SignupPage extends StatefulWidget {
  const   SignupPage({Key? key}) : super (key:key);
  @override
  State<StatefulWidget> createState() {
    return _SignupPage();
  }
}

class _SignupPage extends State<SignupPage> {
  bool _showPass = true ;
  String username1='';
  String password1='';
  String password='';
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _mailController = new TextEditingController();
  TextEditingController _cfpassController = new TextEditingController();
  var _userErr = "username không hợp lệ";
  var _mailErr = "mail không hợp lệ";
  var _passErr = "mật khẩu phải trên 6 ký tự";
  var _cfpassErr = "mật khẩu phải giống nhau";
  var _userInvalid = false;
  var _passInvalid = false;
  var _mailInvalid = false;
  var _cfpassInvalid = false;
  String pass='';
  double _width=300;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: _width,
        padding: EdgeInsets.fromLTRB(30, 100, 30, 30),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: Container(
                child: Text(
                  "Create an account.It's free",
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
                        onChanged: (newusername) {
                          print(newusername);
                          username1 = newusername;
                        },
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        controller: _userController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:'Username',
                            errorText: _userInvalid ? _userErr : null,
                            labelStyle: TextStyle(color: Colors.grey, fontSize: 20)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        controller: _mailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:'Email',
                            errorText: _mailInvalid ? _mailErr : null,
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
                            setState(() {
                              password1 = newpassword;
                            });
                            },
                            style:TextStyle(fontSize: 18, color: Colors.black),
                            controller: _passController,
                            obscureText: _showPass,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText:'Password',
                                errorText: _passInvalid ? _passErr : null,
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: <Widget> [
                          TextField(
                            onChanged: (newpass) {
                              setState(() {
                                password = newpass;
                              });
                            },
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            controller: _cfpassController,
                            obscureText: _showPass,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText:'Confirm Password',
                                errorText: _cfpassInvalid ? _cfpassErr : null,
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
                onPressed: OnSignupClicked,
                child: Text("Sign up",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                    style: TextStyle(fontSize: 15, color: Colors.grey,),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text("Login",
                        style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void OnToggleShowPass(){
    setState(() {
      _showPass = !_showPass;
    });
  }

  void OnSignupClicked ( ){
    if (_userController.text.length <3)
    { _userInvalid = true ; }
    else {_userInvalid = false;}
    if (_mailController.text.length <3 )
    { _mailInvalid = true ; }
    else {_userInvalid = false;}
    if (_passController.text.length <6)
    { _passInvalid = true; }
    else { _passInvalid = false;}
    if (password != password1) { _cfpassInvalid = true; }
    else { _cfpassInvalid = false;}
    if (_userInvalid==false && _mailInvalid==false && _passInvalid==false &&_cfpassInvalid==false) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
  };
}
}
