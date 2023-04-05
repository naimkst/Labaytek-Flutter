import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:labaytek/helpers/const.dart';
import 'package:labaytek/pages/login.dart';
import 'package:labaytek/pages/verification.dart';

class RegisterWithPhoneNumber extends StatefulWidget {
  const RegisterWithPhoneNumber({ Key? key }) : super(key: key);

  @override
  _RegisterWithPhoneNumberState createState() => _RegisterWithPhoneNumberState();
}

class _RegisterWithPhoneNumberState extends State<RegisterWithPhoneNumber> {
  final TextEditingController controller = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://ouch-cdn2.icons8.com/n9XQxiCMz0_zpnfg9oldMbtSsG7X6NwZi_kLccbLOKw/rs:fit:392:392/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNDMv/MGE2N2YwYzMtMjQw/NC00MTFjLWE2MTct/ZDk5MTNiY2IzNGY0/LnN2Zw.png', fit: BoxFit.cover, width: 280, ),
                SizedBox(height: 50,),
                Text('REGISTER',
                  style: TextStyle(fontFamily: "HirukoBold", fontSize: 24, color: Constants.secondaryBlack),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  child: Text('Enter your phone number to continue, we will send you OTP to verify.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Constants.secondaryBlack, fontFamily: "HirukoLight"),),
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffeeeeee),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        ),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: TextStyle(color: Colors.black),
                        textFieldController: controller,
                        formatInput: false,
                        maxLength: 9,
                        keyboardType:
                        TextInputType.numberWithOptions(signed: true, decimal: true),
                        cursorColor: Colors.black,
                        inputDecoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                          border: InputBorder.none,
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(color: Constants.secondaryBlack.withOpacity(0.5), fontSize: 16, fontFamily: "Hiruko"),
                        ),
                        onSaved: (PhoneNumber number) {
                          print('On Saved: $number');
                        },
                      ),
                      Positioned(
                        left: 90,
                        top: 8,
                        bottom: 8,
                        child: Container(
                          height: 40,
                          width: 1,
                          color: Colors.black.withOpacity(0.13),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 100,),
                FadeInDown(
                  // delay: Duration(milliseconds: 600),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      setState(() {
                        _isLoading = true;
                      });

                      Future.delayed(Duration(seconds: 2), () {
                        setState(() {
                          _isLoading = false;
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Verificatoin()));
                      });
                    },
                    color: Constants.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: _isLoading  ? Container(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Colors.black,
                        strokeWidth: 2,
                      ),
                    ) :
                    Text("Request OTP", style: TextStyle(color: Colors.white, fontFamily: "HirukoBold"),),
                  ),
                ),
                SizedBox(height: 20,),
                FadeInDown(
                  // delay: Duration(milliseconds: 800),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?', style: TextStyle(color: Constants.secondaryGray, fontFamily: "Hiruko"),),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text('Login', style: TextStyle(color: Constants.secondaryBlack, fontFamily: "Hiruko"),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
