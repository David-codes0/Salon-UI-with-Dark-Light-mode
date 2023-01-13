import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/model/model.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/dataProvider.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';

import 'detailScreen.dart';
import 'notificationScreen.dart';
import 'specialListViewAllScreen.dart';
import 'specialOfferViewAllScreen.dart';

class DiscoverScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  DiscoverScreenState createState() => DiscoverScreenState();
}

class DiscoverScreenState extends State<DiscoverScreen> {
  late List<BestSpecialModel> bestSpecialList;
  late List<SpecialOfferModel> specialOfferList;
  late List<BestSpecialModel> bestSpecialNewList;
  late List<SpecialOfferModel> specialOfferNewList;

  @override
  void initState() {
    super.initState();
    bestSpecialList = getSpecialList();
    specialOfferList = getSpecialOfferList();
    bestSpecialNewList = getSpecialNewList();
    specialOfferNewList = getSpecialOfferNewList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Hi', style: boldTextStyle(size: 18)),
                      8.width,
                      const Text('Theresa Cohen,',
                          style: TextStyle(
                              fontSize: 18,
                              color: colorPrimary,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  GestureDetector(
                    child: const Icon(Icons.notifications,
                        color: colorPrimary, size: 22),
                    onTap: () {
                      BHNotificationScreen().launch(context);
                    },
                  )
                ],
              ),
              16.height,
              Row(
                children: [
                  const Icon(Icons.location_on, size: 16),
                  8.width,
                  Text('301 Dorthy walks,chicago,Us.',
                      style: secondaryTextStyle()),
                ],
              ),
              8.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: TextFormField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        hintText: 'Find salon specialist',
                        prefixIcon: const Icon(Icons.search, color: greyColor),
                        hintStyle: const TextStyle(color: greyColor),
                        filled: true,
                        fillColor: context.cardColor,
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: aappDividerColor, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: aappDividerColor, width: 0.5),
                        ),
                      ),
                    ),
                  ).expand(),
                  8.width,
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 14),
                    height: 45,
                    child: const Icon(Icons.filter_list, color: Colors.grey),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: aappDividerColor, width: 0.5),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(BHTxtBestSpecialists, style: boldTextStyle()),
                  8.height,
                  Text(BHTxtViewAll, style: boldTextStyle(color: colorPrimary))
                      .onTap(
                    () {
                      sendTextData(context);
                    },
                  ),
                ],
              ),
              8.height,
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: bestSpecialList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        DetailScreen().launch(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                        shadowColor: greyColor.withOpacity(0.3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: commonCacheImageWidget(
                                  bestSpecialList[index].img, 110,
                                  width: 120, fit: BoxFit.cover),
                            ),
                            Text(bestSpecialList[index].title!,
                                    style: boldTextStyle())
                                .paddingAll(8),
                            Text(bestSpecialList[index].subTitle!,
                                    style: secondaryTextStyle())
                                .paddingSymmetric(horizontal: 8),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(BHTxtSpecialOffers, style: boldTextStyle()),
                  Text(BHTxtViewAll, style: boldTextStyle(color: colorPrimary))
                      .onTap(
                    () {
                      sendTextDataOffer(context);
                    },
                  ),
                ],
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  itemCount: specialOfferList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        DetailScreen().launch(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                        shadowColor: greyColor.withOpacity(0.3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: commonCacheImageWidget(
                                  specialOfferList[index].img, 100,
                                  width: 200, fit: BoxFit.cover),
                            ),
                            Text(specialOfferList[index].title!,
                                    style: boldTextStyle())
                                .paddingAll(8),
                            Text(
                              specialOfferList[index].subtitle!,
                              style: secondaryTextStyle(),
                            ).paddingOnly(left: 8, right: 8, bottom: 8),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(BHTxtSalonSpecialLists, style: boldTextStyle()),
                  Text(BHTxtViewAll, style: boldTextStyle(color: colorPrimary))
                      .onTap(
                    () {
                      sendTextData(context);
                    },
                  ),
                ],
              ),
              Container(
                height: 204,
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                  itemCount: bestSpecialNewList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        DetailScreen().launch(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                        shadowColor: greyColor.withOpacity(0.3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Container(
                                child: commonCacheImageWidget(
                                    bestSpecialNewList[index].img, 110,
                                    width: 120, fit: BoxFit.cover),
                              ),
                            ),
                            8.height,
                            Container(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    bestSpecialNewList[index].title!,
                                    style: boldTextStyle(),
                                  ),
                                  8.height,
                                  Text(bestSpecialNewList[index].subTitle!,
                                      style: secondaryTextStyle()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(BHTxtSalonServices, style: boldTextStyle()),
                  Text(BHTxtViewAll, style: boldTextStyle(color: colorPrimary))
                      .onTap(
                    () {
                      sendTextDataOffer(context);
                    },
                  ),
                ],
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                  itemCount: specialOfferNewList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        DetailScreen().launch(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                        shadowColor: greyColor.withOpacity(0.3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: commonCacheImageWidget(
                                  specialOfferNewList[index].img, 100,
                                  width: 200, fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(specialOfferNewList[index].title!,
                                  style: boldTextStyle()),
                            ),
                            Text(
                              specialOfferNewList[index].subtitle!,
                              style: secondaryTextStyle(),
                            ).paddingOnly(right: 8, left: 8, bottom: 8),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sendTextData(BuildContext context) {
    String textData = 'Best Specialists';
    SpecialListViewAllScreen(specialList: textData).launch(context);
  }

  void sendTextDataOffer(BuildContext context) {
    String sendOfferText = 'Special Offers';
    SpecialOfferViewAllScreen(offerData: sendOfferText).launch(context);
  }
}
