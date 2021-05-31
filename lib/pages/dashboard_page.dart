import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_booking_app/styles.dart';
import 'package:dotted_line/dotted_line.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      "Where do you want to go?",
                      style: TextStyle(
                          fontSize: 24,
                          color: KColors.textColor,
                          fontWeight: FontWeight.bold,
                          height: 1.3),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 30,
                        color: KColors.grey,
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(
                              fontSize: 16,
                              color: KColors.darkBlue.withOpacity(0.5),
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Bandung Station",
                          style: TextStyle(
                              fontSize: 18,
                              color: KColors.textColor,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: DottedLine(
                              lineLength: double.infinity,
                              dashColor: Colors.grey,
                            ),
                          ),
                          Container(
                            width: 38,
                            height: 38,
                            child: Icon(
                              CupertinoIcons.arrow_up_arrow_down,
                              color: KColors.white,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                                color: KColors.darkBlue,
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "To",
                          style: TextStyle(
                              fontSize: 16,
                              color: KColors.darkBlue.withOpacity(0.5),
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Semarang Tawang",
                          style: TextStyle(
                              fontSize: 18,
                              color: KColors.textColor,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Icon(
                      CupertinoIcons.exclamationmark_circle,
                      color: KColors.darkBlue.withOpacity(.6),
                    ),
                    decoration: BoxDecoration(
                      color: KColors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          primary: KColors.primaryColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 18,
                              color: KColors.textColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        KColors.textColor,
                        KColors.darkBlue
                      ]
                    )
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KERETO',
                              style: TextStyle(color: KColors.white),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Stay Safe',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: KColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Use your mask!",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: KColors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Image.asset(
                            'assets/images/woman-mask.png',
                            width: 220,
                          )),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20, tileMode: TileMode.decal),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              color: KColors.textColor.withOpacity(0.3),
                              child: Text(
                                'Learn More',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: KColors.white,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: KColors.darkBlue,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border_rounded,
                color: KColors.darkBlue,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.ticket,
                color: KColors.darkBlue,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: KColors.darkBlue,
              ),
              label: 'home'),
        ],
      ),
    );
  }
}
