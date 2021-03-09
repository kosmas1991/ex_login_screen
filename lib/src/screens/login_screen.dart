import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top:90.0),
                child: Image.asset('images/logo.png'),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 400,
                    width: 400,
                    child: Column(
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Image.asset('images/logo.png', width: 100, height: 100),
                        //   ],
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            buildIcon(),
                            usernameField(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            buildIcon2(),
                            passwordField(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              color: Colors.white,

                              onPressed: () {},
                              child: Text('Log in'),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildIcon() {
    return Container(
      height: 50,
      width: 50,
      // color: Colors.white,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Icon(
          Icons.person,
        ),
      ),
    );
  }

  Widget usernameField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 300,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          elevation: 5.0,
          color: Colors.white,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'midas@gmail.com',
            ),
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }

  Container buildIcon2() {
    return Container(
      height: 50,
      width: 50,
      // color: Colors.white,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Icon(
          Icons.lock,
        ),
      ),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 300,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          elevation: 5.0,
          color: Colors.white,
          child: TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              //hintText: 'midas@gmail.com',
            ),
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
