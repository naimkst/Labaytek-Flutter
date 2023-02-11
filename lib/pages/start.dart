import 'package:flutter/material.dart';
import 'package:labaytek/helpers/const.dart';
import 'package:labaytek/pages/start_info.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Image.asset('assets/images/Newlogo.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "IT'S ALL STARTS HERE",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  margin: EdgeInsets.only(bottom: 50),
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StartInfoPage()));
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
          ),
        ],
      ),
    ));
  }
}
