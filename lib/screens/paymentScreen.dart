import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:hairsalon_prokit/main.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';

import 'finishedAppoScreen.dart';

class BHPaymentScreen extends StatefulWidget {
  static String tag = '/BookAppointmentScreen';

  @override
  BookAppointmentScreenState createState() => BookAppointmentScreenState();
}

class BookAppointmentScreenState extends State<BHPaymentScreen> {
  int? _radioValue1 = 0;

  void something(int? value) {
    setState(() {
      _radioValue1 = value;
      print(_radioValue1);
      switch (_radioValue1) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment', style: boldTextStyle(size: 18)),
        centerTitle: true,
        iconTheme: IconThemeData(color: appStore.isDarkModeOn ? white : black),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: context.cardColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Services', style: boldTextStyle()),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: greyColor.withOpacity(0.3),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 2.0),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: CachedNetworkImage(
                            placeholder: placeholderWidgetFn() as Widget
                                Function(BuildContext, String)?,
                            imageUrl: dashedBoardImage4,
                            height: 70,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        8.width,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Conado Hair Studio',
                                style: boldTextStyle(size: 14)),
                            8.height,
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    size: 14, color: aappTextColorSecondary),
                                Text(
                                  '34 harmony Ikorodu lagos.',
                                  style: secondaryTextStyle(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ).expand(),
                              ],
                            ),
                          ],
                        ).expand(),
                      ],
                    ),
                    16.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Makeup Marguerite',
                            style: boldTextStyle(size: 14)),
                        Text('1:30 - 2:30 PM',
                            style: primaryTextStyle(
                                color: colorPrimary, size: 14)),
                      ],
                    ),
                    16.height,
                    Row(
                      children: [
                        Icon(Icons.person,
                            size: 14, color: aappTextColorSecondary),
                        Text('Lettie Neal',
                                style: TextStyle(
                                    color: aappTextColorSecondary,
                                    fontSize: 14))
                            .paddingOnly(left: 4),
                      ],
                    ),
                    16.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('1:30-2:30 PM', style: primaryTextStyle(size: 14)),
                        Text('June 15,2020', style: primaryTextStyle(size: 14)),
                        Text('\$25', style: boldTextStyle(size: 14)),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 16),
                      color: aappDividerColor,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Pay', style: boldTextStyle(size: 14)),
                          Text('\$25', style: boldTextStyle(size: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              16.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment Methods', style: boldTextStyle(size: 14)),
                  Text('Add new method',
                      style: boldTextStyle(size: 14, color: colorPrimary)),
                ],
              ),
              8.height,
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: greyColor.withOpacity(0.3),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 2.0),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(visaCardImg, height: 40, width: 40),
                        16.width,
                        Text('**** **** *123', style: boldTextStyle()),
                      ],
                    ),
                    Radio(
                      value: 0,
                      groupValue: _radioValue1,
                      activeColor: colorPrimary,
                      onChanged: (dynamic value) => something(value),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: greyColor.withOpacity(0.3),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 2.0)
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(masterCardImg, height: 40, width: 40),
                        16.width,
                        Text('**** **** *333', style: boldTextStyle()),
                      ],
                    ),
                    Radio(
                      value: 1,
                      groupValue: _radioValue1,
                      activeColor: colorPrimary,
                      focusColor: aappTextColorSecondary,
                      onChanged: (dynamic value) => something(value),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: greyColor.withOpacity(0.3),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 2.0),
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 14, bottom: 14),
                  child: Text('Payment in case', style: boldTextStyle()),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12),
                    primary: colorPrimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  onPressed: () {
                    BHFinishedAppScreen().launch(context);
                  },
                  child: Text('Confirm Payment',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
