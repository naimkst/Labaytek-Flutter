import 'package:flutter/material.dart';
import 'package:labaytek/helpers/const.dart';
import 'package:labaytek/pages/login.dart';
import 'package:labaytek/pages/register.dart';
import 'package:labaytek/pages/register_with_phone.dart';
import 'package:labaytek/pages/verification.dart';
class StartInfoPage extends StatefulWidget {
  const StartInfoPage({Key? key}) : super(key: key);

  @override
  State<StartInfoPage> createState() => _StartInfoPageState();
}

class _StartInfoPageState extends State<StartInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/Newlogo.jpg'),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stay in the knkow", style: TextStyle(fontSize: 32, fontWeight: FontWeight.normal),),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                     Container(
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                             child: Image.asset('assets/images/order.png', width: 30),
                           ),
                            SizedBox(width: 10,),
                           Text("Order online all you needs", style: TextStyle(
                             fontSize: 17
                           ),),
                         ],
                       ),
                     ),
                    ],
                  ),
SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/tracking.png', width: 30),
                            ),
                            SizedBox(width: 10,),
                            Text("Keep track of your orders", style: TextStyle(
                                fontSize: 17
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/chat.png', width: 30),
                            ),
                            SizedBox(width: 10,),
                            Text("Chat with us", style: TextStyle(
                                fontSize: 17
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('assets/images/heart.png', width: 30),
                            ),
                            SizedBox(width: 10,),
                            Text("Customize your Furniture to fit \n your Home Space and Design", style: TextStyle(
                                fontSize: 17
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 60,
              margin: EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterWithPhoneNumber()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0.0,
                  ),
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),
          ],
        ),
      )
    );
  }
}
