import 'package:flutter/material.dart';
import 'package:mian_coach/signIn.dart';

class landing extends StatelessWidget {
  const landing({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 274,
              width: 274,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {Navigator.pushNamed(context,'signin');},
                  child: Text("Login"),
                  color: Color(0xffF2F2F2),
                  height: 36,
                  minWidth: 90,

                ),
                SizedBox(width: 10,),
                MaterialButton(
                  onPressed: () {Navigator.pushNamed(context,'registration');},
                  child: Text("SignUp"),
                  color: Color(0xffF2F2F2),
                  height: 36,
                  minWidth: 90,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
