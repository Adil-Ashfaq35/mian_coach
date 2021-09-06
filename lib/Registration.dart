import 'package:flutter/material.dart';


class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Your Name..',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'CNIC...',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      obscureText: true,
                      controller: phoneController,
                      decoration: InputDecoration(
                        labelText: 'Mobile Phone...',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                      Container(
                          height: 36,
                          width: 202,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Color(0xffF2F2F2),
                            child: Text(
                              'Confirm Registration',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {},
                          )),
                    ],
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
