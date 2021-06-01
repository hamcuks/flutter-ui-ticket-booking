import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_booking_app/styles.dart';

class ChooseSeatPage extends StatelessWidget {
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
        foregroundColor: KColors.textColor,
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
            child: SeatStatus(),
          ),
          Row(
            children: [],
          ),
          Align(
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
                          builder: (builder) => ChooseSeatPage(),
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
          )
        ],
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
