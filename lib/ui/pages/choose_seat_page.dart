import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text('Select Your\nFavorite Seat',
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold)),
      );
    }

    Widget seatstatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          //NOTE AVALIABLE
          children: [
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_available.png')),
              ),
            ),
            Text('Available', style: blackTextStyle),
            //NOTE SELECTED
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_selected.png')),
              ),
            ),
            Text('selected', style: blackTextStyle),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_unavailable.png')),
              ),
            ),
            Text('unavailable', style: blackTextStyle),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //NOTE SEAT INDICATOR
              children: [
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('A',
                            style: blackTextStyle.copyWith(fontSize: 16)))),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('B',
                            style: blackTextStyle.copyWith(fontSize: 16)))),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(' ',
                            style: blackTextStyle.copyWith(fontSize: 16)))),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('C',
                            style: blackTextStyle.copyWith(fontSize: 16)))),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('D',
                            style: blackTextStyle.copyWith(fontSize: 16)))),
              ],
            ),

            //NOTE SEAT 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text('1',
                              style: blackTextStyle.copyWith(fontSize: 16)))),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            //NOTE SEAT 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text('2',
                              style: blackTextStyle.copyWith(fontSize: 16)))),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            //NOTE SEAT 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 1,
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text('3',
                              style: blackTextStyle.copyWith(fontSize: 16)))),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            //NOTE SEAT 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text('4',
                              style: blackTextStyle.copyWith(fontSize: 16)))),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            //NOTE SEAT 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text('5',
                              style: blackTextStyle.copyWith(fontSize: 16)))),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            //NOTE YOUR SEAT
            Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your seat',
                        style: greyTextStyle.copyWith(fontWeight: light)),
                    SizedBox(width: 4),
                    Text('A3, B3',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium)),
                  ],
                )),
            //NOTE TOTAL PRICE
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                        style: greyTextStyle.copyWith(fontWeight: light)),
                    SizedBox(width: 4),
                    Text('IDR 540.000.000',
                        style: purpleTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold)),
                  ],
                ))
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        title: 'Continue to Checkout',
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CheckoutPage()));
        },
        margin: EdgeInsets.only(top: 30, bottom: 46),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          seatstatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
