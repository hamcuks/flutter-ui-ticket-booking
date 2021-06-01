import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../styles.dart';

class DetailTicketPage extends StatelessWidget {
  List<Map<String, dynamic>> ticketInfo = [
    {
      "city": "Bandung",
      "stationName": "Bandung Stadion",
      "time": "20:20",
      "day": "Thu, 1 Apr"
    },
    {
      "city": "Semarang",
      "stationName": "Semarang Tawang",
      "time": "03:40",
      "day": "Thu, 1 Apr"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(CupertinoIcons.chevron_left),
          color: KColors.textColor,
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'ID 687690489',
          style: TextStyle(
            fontSize: 18,
            color: KColors.textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(
              CupertinoIcons.paperplane,
              color: KColors.textColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TicketCard(),
            SizedBox(
              height: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Train itenerary',
                  style: TextStyle(
                      fontSize: 22,
                      color: KColors.textColor,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 30,
                        color: KColors.grey,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Train Journey',
                            style: TextStyle(
                              fontSize: 16,
                              color: KColors.textColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Icon(CupertinoIcons.chevron_up),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          TimelineTile(
                            axis: TimelineAxis.vertical,
                            alignment: TimelineAlign.center,
                            indicatorStyle: IndicatorStyle(
                              width: 15,
                              color: KColors.primaryColor,
                              indicator: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 3, color: KColors.primaryColor),
                                ),
                              ),
                            ),
                            afterLineStyle: LineStyle(
                              thickness: 1.5,
                              color: KColors.primaryColor,
                            ),
                            endChild: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Bandung',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: KColors.textColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Bandung Stadion',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: KColors.textColor.withOpacity(.5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            startChild: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '20:20',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: KColors.textColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Thu, 1 Apr',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: KColors.textColor.withOpacity(.5),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                            isFirst: true,
                          ),
                          TimelineTile(
                            axis: TimelineAxis.vertical,
                            alignment: TimelineAlign.center,
                            indicatorStyle: IndicatorStyle(
                              width: 15,
                              color: KColors.primaryColor,
                            ),
                            beforeLineStyle: LineStyle(
                              thickness: 1.5,
                              color: KColors.primaryColor,
                            ),
                            endChild: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Semarang',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: KColors.textColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Semarang Tawang',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: KColors.textColor.withOpacity(.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            startChild: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '03:40',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: KColors.textColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Thu, 1 Apr',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: KColors.textColor.withOpacity(.5),
                                  ),
                                )
                              ],
                            ),
                            isLast: true,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 30,
                        color: KColors.grey,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      primary: Colors.white,
                    ),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (builder) => DetailTicketPage(),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.exclamationmark_triangle_fill,
                          color: KColors.primaryColor,
                        ),
                        Text(
                          'Requirement to Board',
                          style: TextStyle(
                              fontSize: 18,
                              color: KColors.textColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          CupertinoIcons.chevron_down,
                          color: KColors.textColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TicketCard extends StatelessWidget {
  const TicketCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [KColors.textColor, KColors.darkBlue],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: KColors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'Full Name',
                          style: TextStyle(
                            color: KColors.textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Ivan Nur Ilham Syah',
                          style: TextStyle(
                            fontSize: 16,
                            color: KColors.textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'Seat Place',
                          style: TextStyle(
                            color: KColors.textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Exec 5 / B3',
                          style: TextStyle(
                            fontSize: 16,
                            color: KColors.textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [KColors.textColor, KColors.darkBlue],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                      Flexible(
                        child: DottedLine(
                          dashColor: KColors.textColor.withOpacity(.3),
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [KColors.textColor, KColors.darkBlue],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Center(
                        child: Text(
                          'Booking Code G154MD4',
                          style: TextStyle(
                            fontSize: 16,
                            color: KColors.textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/barcode.png'),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
