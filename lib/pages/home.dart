import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:labaytek/pages/cart.dart';
import 'package:labaytek/pages/products.dart';
import 'package:labaytek/pages/profile.dart';
import 'package:labaytek/pages/wishlist.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../helpers/const.dart';

class HomePage extends StatefulWidget {
  final String countryName;
  const HomePage({Key? key, required this.countryName}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg',
    'assets/images/slider4.jpg',
    'assets/images/slider5.jpg',
  ];
  final CarouselController carouselSlider = CarouselController();
  int sliderIndex = 0;
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Constants.primaryColor),
          Icon(Icons.widgets_sharp, size: 30, color: Constants.primaryColor),
          Icon(Icons.shopping_cart, size: 30, color: Constants.primaryColor),
          Icon(Icons.heart_broken_sharp,
              size: 30, color: Constants.primaryColor),
          Icon(Icons.person, size: 30, color: Constants.primaryColor),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            _page = index;
            print(index);
            _page == 0
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => HomePage(
                              countryName: widget.countryName,
                            )))
                : _page == 1
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Products()))
                    : _page == 2
                        ? Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Cart()))
                        : _page == 3
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => Wishlist()))
                            : _page == 4
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => Profile()))
                                : null;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: double.infinity,
              child: Stack(
                children: [
                  CarouselSlider(
                    items: imgList
                        .map((item) => Container(
                              child: Center(
                                  child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              )),
                            ))
                        .toList(),
                    carouselController: carouselSlider,
                    options: CarouselOptions(
                        height: 200.0,
                        viewportFraction: 1.2,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        onPageChanged: (index, reason) {
                          setState(() {
                            sliderIndex = index;
                          });
                        }),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.map((url) {
                        int index = imgList.indexOf(url);
                        return Container(
                          width: 15.0,
                          height: 5.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(2),
                              color: sliderIndex == index
                                  ? Constants.primaryColor
                                  : Colors.grey),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey.withOpacity(0.7)),
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //     Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.grey),
                  // ),
                  //       // padding: EdgeInsets.symmetric(horizontal: 15),
                  //       // margin: EdgeInsets.only(left: 10),
                  //       child: DropdownButton(
                  //         onChanged: (value){
                  //           print("changed");
                  //         },
                  //         underline: SizedBox(),
                  //         borderRadius: BorderRadius.circular(0),
                  //
                  //         style: TextStyle(color: Colors.black,),
                  //         hint: Text("All Category"),
                  //         elevation: 0,
                  //         itemHeight: 50,
                  //         items: [
                  //           DropdownMenuItem(
                  //             child: Text("Sofas"),
                  //             value: 1,
                  //           ),
                  //           DropdownMenuItem(
                  //             child: Text("Chairs"),
                  //             value: 2,
                  //           ),
                  //           DropdownMenuItem(
                  //             child: Text("Tables"),
                  //             value: 2,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  Container(
                    width: MediaQuery.of(context).size.width - 20,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.7)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search products here..",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(50)
                        // ),
                        border: InputBorder.none,
                        icon: Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //   ),
                  //   child: Container(
                  //     width: 100,
                  //     height: 50,
                  //     decoration: BoxDecoration(
                  //       color: Constants.primaryColor,
                  //       borderRadius: BorderRadius.only(
                  //         topRight: Radius.circular(0),
                  //         bottomRight: Radius.circular(0),
                  //       ),
                  //     ),
                  //     child: ElevatedButton(
                  //       onPressed: () {},
                  //       style: ElevatedButton.styleFrom(
                  //        elevation: 0,
                  //       ),
                  //       child: Text("SEARCH", style: TextStyle(color:Colors.white, fontWeight: FontWeight.w600)),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      margin: EdgeInsets.only(top: 20, left: 10),
                      decoration: BoxDecoration(
                        color: Constants.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "All Categories",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/category.png",
                            width: 25,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      margin: EdgeInsets.only(top: 20, left: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff335384),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Product Gallery",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/gallery.png",
                            width: 25,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      margin: EdgeInsets.only(top: 20, left: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff7f2563),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Quick Delivery",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/delivery.png",
                            width: 25,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Ready for Delivery",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Constants.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.01),
                                spreadRadius: 0,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.38,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/product06.png"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Amos Chair",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("A modren ake on traditional",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.7))),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ 200",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Icon(Icons.shopping_bag_outlined,
                                        color: Constants.primaryColor)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                  children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Selected For You",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Constants.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                              children: [
                            Image.asset(
                              "assets/images/product06.png",
                              width: 70,
                            ),
                            Expanded(
                              child: Text(
                                "High waist trousers",
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                        );
                      }),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "On Sale",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Constants.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.01),
                                    spreadRadius: 0,
                                    blurRadius: 1,
                                    offset:
                                    Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.38,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/product06.png"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Amos Chair",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("A modren ake on traditional",
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.7))),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$ 200",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        Icon(Icons.shopping_bag_outlined,
                                            color: Constants.primaryColor)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Constants.primaryColor,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10))),
                                child: Text(
                                  "50% OFF",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ]

                        );
                      }),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
