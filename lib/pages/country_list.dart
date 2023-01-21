import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:labaytek/helpers/const.dart';
import 'package:labaytek/pages/home.dart';

class CountryList extends StatefulWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  String? countryName = '';
  bool _isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Container(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                    children:[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.transparent,
                        child:ClipOval(child: Image.asset('assets/images/splash-logo.png'),) ,
                      ),
                      const SizedBox(height: 10.0),
                      Text("Labaytek", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20.0),

                      const SizedBox(height: 20.0),
                    ]
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(20.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to Labaytek',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Center(
                        child: Text(
                          'We were founded in 1993 under Bayt Al Europi establishment in Hawally interior retail market as one of the main suppliers and installers of all types of interior decoration materials.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            height: 1.5,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            elevation: 0.0,
                          ),
                          onPressed: () {
                            showCountryPicker(
                              context: context,
                              //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                              countryFilter: <String>['KW', 'BH', 'OM', 'QA', 'SA', 'AE'],
                              // favorite: <String>['SE'],
                              //Optional. Shows phone code before the country name.
                              showPhoneCode: false,
                              onSelect: (Country country) {
                                setState(() {
                                  countryName = country.name;
                                  _isDisabled = true;
                                });
                              },

                              // Optional. Sets the theme for the country list picker.
                              countryListTheme: CountryListThemeData(
                                // Optional. Sets the border radius for the bottomsheet.
                                bottomSheetHeight: 400,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                                // Optional. Styles the search field.
                                inputDecoration: InputDecoration(
                                  labelText: 'Search',
                                  hintText: 'Start typing to search',
                                  prefixIcon: const Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color(0xFF8C98A8).withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                // Optional. Styles the text in the search field
                                searchTextStyle: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                              ),

                              // Optional. Sets the theme for the country list picker.
                            );
                          },
                          child:  Text( countryName.toString() != '' ? countryName.toString() : "Select Country", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(

                          onPressed: (){
                            if(_isDisabled){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(
                                countryName: countryName.toString(),
                              )));
                            }
                          }, child: Text("Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)), style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          backgroundColor: _isDisabled ? Color(0xff435267) : Colors.grey,
                          disabledBackgroundColor: Colors.grey,
                          elevation: 0.0,
                        ),),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
