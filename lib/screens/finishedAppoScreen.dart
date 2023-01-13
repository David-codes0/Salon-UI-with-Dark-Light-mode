import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:hairsalon_prokit/main.dart';

class BHFinishedAppScreen extends StatefulWidget {
  static String tag = '/FinishedScreen';

  @override
  FinishedScreenState createState() => FinishedScreenState();
}

class FinishedScreenState extends State<BHFinishedAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment',
            style: boldTextStyle(color: aappTextColorPrimary)),
        centerTitle: true,
        iconTheme: IconThemeData(color: appStore.isDarkModeOn ? white : black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16, left: 16, top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.cardColor,
              boxShadow: [
                BoxShadow(
                    color: greyColor, offset: Offset(0.0, 1.0), blurRadius: 2.0)
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.height,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Conado Hair Salon', style: boldTextStyle(size: 14)),
                      8.height,
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              size: 14, color: aappTextColorSecondary),
                          8.width,
                          Text('301 Dorthy walks,chicago,Us.',
                              style: secondaryTextStyle()),
                        ],
                      ),
                      8.height,
                      Text('146566311684641',
                          style: secondaryTextStyle(size: 14)),
                    ],
                  ),
                  8.height,
                  Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: greyColor.withOpacity(0.3)),
                  8.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hair Styling', style: boldTextStyle(size: 14)),
                      Text('June 15,2020',
                          style: boldTextStyle(color: colorPrimary, size: 14)),
                    ],
                  ),
                  8.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person,
                              size: 14, color: aappTextColorSecondary),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text('Lettie Neal',
                                style: secondaryTextStyle()),
                          ),
                        ],
                      ),
                      Text('1:30 - 2:30 PM',
                          style: boldTextStyle(color: colorPrimary, size: 14)),
                    ],
                  ),
                  8.height,
                  Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: greyColor.withOpacity(0.3)),
                  8.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Scan Barcode', style: boldTextStyle(size: 14)),
                      Image.asset(barCodeImg, height: 50, width: 120),
                    ],
                  ),
                  16.height,
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(12),
                      primary: colorPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {},
                    child: Text('Book more Appointment',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                8.height,
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(12),
                      primary: context.cardColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: colorPrimary)),
                    ),
                    onPressed: () {},
                    child: Text('Go to Appointment',
                        style: TextStyle(
                            color: colorPrimary,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
