import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/model/model.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/dataProvider.dart';
import 'package:hairsalon_prokit/main.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';

import 'detailScreen.dart';

class SpecialOfferViewAllScreen extends StatefulWidget {
  static String tag = '/SpecialOfferViewAllScreen';
  final String? offerData;

  SpecialOfferViewAllScreen({this.offerData});

  @override
  SpecialOfferViewAllScreenState createState() =>
      SpecialOfferViewAllScreenState();
}

class SpecialOfferViewAllScreenState extends State<SpecialOfferViewAllScreen> {
  late List<SpecialOfferModel> specialOfferList;

  @override
  void initState() {
    super.initState();
    specialOfferList = getSpecialOfferList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.offerData!, style: boldTextStyle()),
        centerTitle: true,
        iconTheme: IconThemeData(color: appStore.isDarkModeOn ? white : black),
        leading: Icon(Icons.arrow_back).onTap(
          () {
            finish(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Wrap(
            runSpacing: 8,
            spacing: 8,
            children: specialOfferList.map(
              (e) {
                return Container(
                  width: context.width() * 0.46 - 16,
                  margin: EdgeInsets.all(8),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: commonCacheImageWidget(e.img, 100,
                            width: context.width() * 0.45, fit: BoxFit.cover),
                      ),
                      Text(e.title!, style: boldTextStyle()).paddingAll(8),
                      Text(e.subtitle!, style: secondaryTextStyle())
                          .paddingOnly(left: 8, right: 8, bottom: 8),
                    ],
                  ),
                ).onTap(
                  () {
                    DetailScreen().launch(context);
                  },
                );
              },
            ).toList(),
          ).center(),
        ),
      ),
    );
  }
}