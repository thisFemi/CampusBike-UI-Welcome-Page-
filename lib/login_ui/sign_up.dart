import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 16, 0, 0),
          leading: IconButton(
            icon: new Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60),
                      Text(
                        'Sign up to see\nClose Bike around You',
                        style: TextStyle(
                          color: Color.fromARGB(255, 16, 0, 0),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
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
                                style: TextStyle(
                                  color: Color.fromARGB(255, 16, 0, 0),
                                ),
                                decoration: InputDecoration(
                                    fillColor: Colors.black,
                                    hintText: "Mobile Number or Email",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                    border: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.black))),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Color.fromARGB(255, 16, 0, 0)))),
                              child: TextField(
                                style: TextStyle(
                                  color: Color.fromARGB(255, 16, 0, 0),
                                ),
                                decoration: InputDecoration(
                                    fillColor: Colors.black,
                                    hintText: "UserName",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                    border: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.black))),
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
                                  obscureText: true,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 16, 0, 0),
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  )),
                            ),
                            SizedBox(
                              height: 60,
                            ),
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
                                        "Sign Up",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(255, 47, 3, 3),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                        child: Text(
                          "___Or SignUp With___",
                          style: TextStyle(
                              color: Color.fromARGB(255, 47, 3, 3),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 70,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 40,
                            ),
                            AvatarView(
                              radius: 25,
                              borderWidth: 4,
                              borderColor: Color.fromARGB(255, 8, 66, 113),
                              avatarType: AvatarType.CIRCLE,
                              backgroundColor: Color.fromARGB(255, 15, 77, 129),
                              imagePath: "assets/images/fb_logo.png",
                            ),
                            SizedBox(width: 15),
                            AvatarView(
                              radius: 25,
                              borderWidth: 4,
                              borderColor: Color.fromARGB(255, 223, 27, 27),
                              avatarType: AvatarType.CIRCLE,
                              backgroundColor: Color.fromARGB(255, 170, 80, 28),
                              imagePath: "assets/images/google_logo.png",
                              // placeHolder: Container(
                              //   child: Icon(
                              //     Icons.google,
                              //     size: 10,
                              //   ),
                            ),
                            SizedBox(width: 15),
                            AvatarView(
                              radius: 25,
                              borderWidth: 4,
                              borderColor: Color.fromARGB(255, 5, 5, 5),
                              avatarType: AvatarType.CIRCLE,
                              backgroundColor: Color.fromARGB(255, 170, 80, 28),
                              imagePath: "assets/images/github_logo.jpg",
                            ),
                            SizedBox(width: 15),
                            AvatarView(
                              radius: 25,
                              borderWidth: 4,
                              borderColor: Color.fromARGB(255, 34, 111, 226),
                              avatarType: AvatarType.CIRCLE,
                              backgroundColor: Color.fromARGB(255, 170, 80, 28),
                              imagePath: "assets/images/icloud_logo.png",
                            )
                          ])
                    ],
                  )
                ],
              ),
            ],
          ),
        )));
  }
}
