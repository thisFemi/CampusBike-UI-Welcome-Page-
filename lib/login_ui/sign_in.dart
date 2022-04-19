import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 16, 0, 0),
          leading: IconButton(
            icon: new Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 251, 251, 253)),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 252, 252),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color.fromARGB(255, 16, 0, 0),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          color: Color.fromARGB(255, 16, 0, 0),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 320,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromARGB(255, 16, 0, 0))),
                            ),
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  hintText: "Username or Email",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                          color:
                                              Color.fromARGB(255, 16, 0, 0)))),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromARGB(255, 16, 0, 0))),
                            ),
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                          color:
                                              Color.fromARGB(255, 16, 0, 0)))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Color(0xFFffb421),
                              Color(0xFFff7521)
                            ])),
                        child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 47, 3, 3),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ))),
                    SizedBox(height: 10),
                    Row(children: <Widget>[
                      Text(
                        "Don't Have an Account Yet?",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          child: Text(
                            'Click Here',
                            style:
                                TextStyle(color: Color.fromARGB(255, 47, 3, 3)),
                          ),
                          onPressed: () {})
                    ])
                  ],
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
