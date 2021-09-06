import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(

        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              alignment: Alignment.topLeft,
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                  )
              )
          ),
          SizedBox(
            width: 150,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.home,
                size: 30,
                color: Color(0xff6C63FF),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.cancel,
                size: 30,

              )
            ],
          )
        ],
        ),
      SizedBox(
        height: 180,
      ),
      Column(

        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'User Name...',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password...',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                         //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password',
                      style: TextStyle(color: Color(0xff707070))),
                ),
                Container(
                    height: 36,
                    width: 90,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color(0xffF2F2F2),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'route_selection');
                      },
                    )),
              ],
          ),
        ]
      ),
    ]
    ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 0.0,
        onPressed: () {},
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/phone.png'),
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
