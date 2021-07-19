import 'dart:ui';

import 'package:farmlookerflutter/screens/register.dart';
import 'package:farmlookerflutter/widgets/responsive.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
              width: width,
              height: height,
            ),
          ),
          Positioned(
            top: height / 4,
            left: 30,
            right: Responsive.isMobile(context) || Responsive.isTablet(context)
                ? 30
                : null,
            child: Responsive(
              mobile: DesktopLogin(),
              tablet: DesktopLogin(),
              desktop: DesktopLogin(),
            ),
          )
        ],
      ),
    );
  }
}

class DesktopLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade100.withOpacity(0.8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/logo.jpeg",
                alignment: Alignment.centerLeft,
                height: 100,
                width: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  "LOGIN",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.grey.shade900,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: Responsive.isMobile(context) ||
                                    Responsive.isTablet(context)
                                ? MediaQuery.of(context).size.width / 1.2
                                : MediaQuery.of(context).size.width / 4.5,
                            // color: Colors.grey.shade200,
                            child: TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              keyboardType: TextInputType.text,
                              cursorColor: Colors.green.shade400,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade900),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade900),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade900),
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.all(12),
                                fillColor: Colors.white10,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Colors.grey.shade900,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: Responsive.isMobile(context) ||
                                    Responsive.isTablet(context)
                                ? MediaQuery.of(context).size.width / 1.2
                                : MediaQuery.of(context).size.width / 4.5,
                            // color: Colors.grey.shade200,
                            child: TextField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              keyboardType: TextInputType.text,
                              cursorColor: Colors.green.shade400,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade900),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade900),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade900),
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.all(12),
                                fillColor: Colors.white10,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Register()));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          width: Responsive.isMobile(context) ||
                                  Responsive.isTablet(context)
                              ? MediaQuery.of(context).size.width / 1.2
                              : MediaQuery.of(context).size.width / 4.5,
                          child: Center(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade400,
                            elevation: 25,
                            shadowColor: Colors.green.shade300),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Sign Up',
                                style: TextStyle(color: Colors.green.shade300),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Register()));
                                  }),
                          ],
                        ),
                      ),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
