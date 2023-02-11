import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:labaytek/helpers/const.dart';
import 'package:labaytek/pages/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  height: 350,
                  child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: AnimatedOpacity(
                            opacity: activeIndex == 0 ? 1 : 0,
                            duration: Duration(seconds: 1,),
                            curve: Curves.linear,
                            child: Image.network('https://ouch-cdn2.icons8.com/SJdbtSjGdwW7hiZzXfoV7rFMRfoDoQLg5ZWYtTuxvXI/rs:fit:256:256/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNjMx/LzE2YWZmMDU4LTRh/N2ItNGIyMC05YzMx/LTI1YmI3ZGIyN2Y0/ZC5zdmc.png', height: 400,),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: AnimatedOpacity(
                            opacity: activeIndex == 1 ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.linear,
                            child: Image.network('https://ouch-cdn2.icons8.com/vSx9H3yP2D4DgVoaFPbE4HVf6M4Phd-8uRjBZBnl83g/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNC84/MzcwMTY5OS1kYmU1/LTQ1ZmEtYmQ1Ny04/NTFmNTNjMTlkNTcu/c3Zn.png', height: 400,),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: AnimatedOpacity(
                            opacity: activeIndex == 2 ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.linear,
                            child: Image.network('https://ouch-cdn2.icons8.com/fv7W4YUUpGVcNhmKcDGZp6pF1-IDEyCjSjtBB8-Kp_0/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTUv/ZjUzYTU4NDAtNjBl/Yy00ZWRhLWE1YWIt/ZGM1MWJmYjBiYjI2/LnN2Zw.png', height: 400,),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: AnimatedOpacity(
                            opacity: activeIndex == 3 ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.linear,
                            child: Image.network('https://ouch-cdn2.icons8.com/AVdOMf5ui4B7JJrNzYULVwT1z8NlGmlRYZTtg1F6z9E/rs:fit:784:767/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvOTY5/L2NlMTY1MWM5LTRl/ZjUtNGRmZi05MjQ3/LWYzNGQ1MzhiOTQ0/Mi5zdmc.png', height: 400,),
                          ),
                        )
                      ]
                  ),
                ),
                SizedBox(height: 40,),
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.0),
                    labelText: 'Email',
                    hintText: 'Username or e-mail',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    prefixIcon: Icon(Iconsax.user, color: Colors.black, size: 18, ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.0),
                    labelText: 'Password',
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Icon(Iconsax.key, color: Colors.black, size: 18, ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot Password?', style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w400),),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(countryName: "countryName")));
                  },
                  height: 45,
                  color: Constants.primaryColor,
                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16.0),),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?', style: TextStyle(color: Colors.grey.shade600, fontSize: 14.0, fontWeight: FontWeight.w400),),
                    TextButton(
                      onPressed: () {},
                      child: Text('Register', style: TextStyle(color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.w400),),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
