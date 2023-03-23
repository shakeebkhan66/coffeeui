import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffeeui/constants/colors.dart';
import 'package:coffeeui/constants/customtextformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/custom_circletabindicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: textFieldColor,
                            borderRadius: BorderRadius.circular(13.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: dotsIconColor,
                                  offset: Offset(0.01, 0.01),
                                  spreadRadius: 0.01,
                                  blurRadius: 2.0)
                            ]),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.only(top: 2.0, left: 2.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: specialForYouColor,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0, left: 10.0),
                        child: Icon(
                          Icons.category_outlined,
                          color: dotsIconColor,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: textFieldColor,
                            borderRadius: BorderRadius.circular(13.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: dotsIconColor,
                                  offset: Offset(0.01, 0.01),
                                  spreadRadius: 0.01,
                                  blurRadius: 2.0)
                            ]),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.only(top: 2.0, left: 2.5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: specialForYouColor,
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/images/milk.jpg",
                                ))),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Find the best\ncoffee for you",
                style: GoogleFonts.aBeeZee(
                    color: findTheBestCoffeeTextColor,
                    wordSpacing: 1.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // TODO TextFormField
            const CustomTextFormField(),
            const SizedBox(
              height: 20.0,
            ),
            DefaultTabController(
              length: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TabBar(
                            isScrollable: true,
                            controller: _tabController,
                            unselectedLabelColor: dotsIconColor,
                            labelColor: buyNowButtonColor,
                            labelStyle: GoogleFonts.acme(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            indicator: CircleTabIndicator(
                                color: buyNowButtonColor, radius: 4),
                            tabs: const [
                              Tab(
                                text: "Cappaccino",
                              ),
                              Tab(
                                text: "Espresso",
                              ),
                              Tab(
                                text: "Latte",
                              ),
                              Tab(
                                text: "Milk",
                              ),
                              Tab(
                                text: "Iced Coffee",
                              ),
                              Tab(
                                text: "Green Tea",
                              ),
                              Tab(
                                text: "Caremal",
                              ),
                            ]),
                      ),
                    ),

                    const SizedBox(
                      height: 12.0,
                    ),

                    SizedBox(
                      height: 250,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          GridView.builder(
                            itemCount: 2,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Column(
                                        children: [Text("sds")],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                          const Center(child: Text("Recipes Videos")),
                          const Center(child: Text("Recipes Videos")),
                          const Center(child: Text("Recipes Videos")),
                          const Center(child: Text("Recipes Videos")),
                          const Center(child: Text("Recipes Videos")),
                          const Center(child: Text("Recipes Videos")),
                        ],
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    //   child: Container(
                    //     width: double.maxFinite,
                    //     height: 400,
                    //     color: Colors.red,
                    //     child: TabBarView(
                    //       controller: _tabController,
                    //       children: [
                    //         GridView.builder(
                    //           itemCount: 2,
                    //           gridDelegate:
                    //           const SliverGridDelegateWithFixedCrossAxisCount(
                    //               crossAxisCount: 2,
                    //               crossAxisSpacing: 8.0,
                    //               mainAxisSpacing: 8.0),
                    //           itemBuilder: (BuildContext context, int index) {
                    //             return Column(
                    //               children: [
                    //               Container(
                    //               height: 250,
                    //               color: Colors.orange,
                    //             )
                    //               ],
                    //             );
                    //           },
                    //         ),
                    //         const Center(child: Text("Recipes Videos")),
                    //         const Center(child: Text("Recipes Videos")),
                    //         const Center(child: Text("Recipes Videos")),
                    //         const Center(child: Text("Recipes Videos")),
                    //         const Center(child: Text("Recipes Videos")),
                    //         const Center(child: Text("Recipes Videos")),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Specials for you",
                style: GoogleFonts.aBeeZee(
                    color: findTheBestCoffeeTextColor,
                    wordSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const SizedBox(height: 12.0),
            Container(
              height: 135.0,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(40.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 110,
                    width: 125,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/capp.jpg"))),
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "5 Coffee Beans\nYou Must Try!",
                          style: GoogleFonts.aBeeZee(
                              color: findTheBestCoffeeTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star_border,
                            color: buyNowButtonColor,
                          ),
                          Icon(
                            Icons.star_border,
                            color: buyNowButtonColor,
                          ),
                          Icon(
                            Icons.star_border,
                            color: buyNowButtonColor,
                          ),
                          Icon(
                            Icons.star_border,
                            color: buyNowButtonColor,
                          ),
                          Icon(
                            Icons.star_border,
                            color: buyNowButtonColor,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
