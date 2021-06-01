import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_booking_app/pages/detail_ticket_page.dart';
import 'package:train_booking_app/styles.dart';

class ChooseSeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> alphabet = ['A', 'B', 'C', 'D'];
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
          'Select Seat',
          style: TextStyle(
            fontSize: 18,
            color: KColors.textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SeatStatus(),
                SizedBox(height: 30),
                Row(
                  children: [
                    SeatBox(alphabet: alphabet),
                    Spacer(),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(CupertinoIcons.chevron_left),
                            onPressed: () {},
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Text(
                              'Executive 5',
                              style: TextStyle(color: KColors.white),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: LinearGradient(
                                    colors: [
                                      KColors.textColor,
                                      KColors.darkBlue
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                          ),
                          IconButton(
                            icon: Icon(CupertinoIcons.right_chevron),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SeatInfo()
        ],
      ),
    );
  }
}

class SeatBox extends StatelessWidget {
  SeatBox({
    Key? key,
    required this.alphabet,
  }) : super(key: key);

  final List<String> alphabet;

  // 0 = unavailable
  // 1 = available
  // 2 = selected
  List<List<int>> seatStatus = [
    [0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0],
    [0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1],
    [0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1],
    [0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 30,
            color: KColors.grey,
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Row(
          children: [
            for (int i = 0; i < alphabet.length; i++)
              Column(
                children: [
                  for (int x = 0; x <= 10; x++)
                    if (x == 0)
                      Container(
                        margin: (i == 1)
                            ? EdgeInsets.only(
                                right: 25, top: 4, left: 4, bottom: 4)
                            : EdgeInsets.all(4),
                        child: Center(child: Text(alphabet[i])),
                        width: 42,
                        height: 42,
                      )
                    else if (seatStatus[i][x] == 0)
                      _unavailableSeat(i, x)
                    else if (seatStatus[i][x] == 1)
                      _availableSeat(i, x)
                    else
                      _selectedSeat(i, x)
                ],
              )
          ],
        ),
      ),
    );
  }

  Container _unavailableSeat(int i, int x) {
    return Container(
      margin: (i == 1)
          ? EdgeInsets.only(right: 25, top: 4, left: 4, bottom: 4)
          : EdgeInsets.all(4),
      child: Center(
          child: Icon(
        CupertinoIcons.xmark,
        color: KColors.white,
      )),
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: KColors.grey,
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }

  Container _availableSeat(int i, int x) {
    return Container(
      margin: (i == 1)
          ? EdgeInsets.only(right: 25, top: 4, left: 4, bottom: 4)
          : EdgeInsets.all(4),
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: KColors.primaryColor,
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }

  Container _selectedSeat(int i, int x) {
    return Container(
      margin: (i == 1)
          ? EdgeInsets.only(right: 25, top: 4, left: 4, bottom: 4)
          : EdgeInsets.all(4),
      child: Center(
          child: Icon(
        Icons.check,
        color: KColors.primaryColor,
      )),
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        border: Border.all(color: KColors.primaryColor, width: 3),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}

class SeatInfo extends StatelessWidget {
  const SeatInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(24),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          color: KColors.white,
          boxShadow: [
            BoxShadow(
                color: KColors.textColor.withOpacity(0.2),
                offset: Offset(0, -2),
                blurRadius: 55)
          ],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text('Your Seat'),
                Spacer(),
                Text(
                  'Exec 5 / Seat A7',
                  style: TextStyle(
                    fontSize: 16,
                    color: KColors.textColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Total Proce'),
                Spacer(),
                Text(
                  '\$48.00',
                  style: TextStyle(
                    fontSize: 16,
                    color: KColors.textColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: KColors.primaryColor,
                ),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => DetailTicketPage(),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 18,
                      color: KColors.textColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeatStatus extends StatelessWidget {
  const SeatStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: KColors.primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Available',
              style: TextStyle(
                  color: KColors.textColor, fontWeight: FontWeight.w700),
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              child: Center(
                child: Icon(Icons.check, size: 15, color: KColors.primaryColor,),
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: KColors.primaryColor),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Selected',
              style: TextStyle(
                  color: KColors.textColor, fontWeight: FontWeight.w700),
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: KColors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Unavailable',
              style: TextStyle(
                  color: KColors.textColor, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ],
    );
  }
}
