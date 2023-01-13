import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hairsalon_prokit/main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/images.dart';

import 'accountInformationScreen.dart';
import 'inviteFriendsScreen.dart';
import 'notificationScreen.dart';
import 'paymentScreen.dart';

class ProfileScreen extends StatefulWidget {
  static String tag = '/ProfileScreen';

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  Future<void> _showDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          contentTextStyle: TextStyle(color: aappTextColorSecondary),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          actionsPadding: EdgeInsets.symmetric(horizontal: 16.0),
          title: Text(BHTxtLogoutDialog, style: boldTextStyle()),
          content: Text(BHTxtLogoutMsg, style: secondaryTextStyle()),
          actions: <Widget>[
            TextButton(
              child: Text(BHBtnYes,
                  style: TextStyle(color: Colors.blue, fontSize: 14)),
              onPressed: () {
                finish(context);
              },
            ),
            TextButton(
              child: Text(BHBtnNo,
                  style: TextStyle(color: Colors.blue, fontSize: 14)),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        height: context.height(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                        backgroundImage:
                            Image.network(dDashedBoardImage5).image,
                        radius: 50),
                  ),
                  8.height,
                  Text('Theresa Cohen', style: boldTextStyle()),
                  8.height,
                  Text('theresacohen@gmail.com', style: secondaryTextStyle()),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
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
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/ic_theme.png',
                              height: 20,
                              width: 20,
                              color: colorPrimary,
                            ),
                            12.width,
                            Text('DarkMode', style: secondaryTextStyle()),
                          ],
                        ),
                        Switch(
                          value: appStore.isDarkModeOn,
                          activeColor: appColorPrimary,
                          onChanged: (s) {
                            appStore.toggleDarkMode(value: s);
                          },
                        )
                      ],
                    ).onTap(() {
                      appStore.toggleDarkMode();
                    }),
                    4.height,
                    Row(
                      children: [
                        Image.asset(paymentIcon,
                            height: 23, width: 23, color: colorPrimary),
                        8.width,
                        Text(BHTxtPaymentMethods, style: secondaryTextStyle())
                            .expand(),
                      ],
                    ).onTap(() {
                      BHPaymentScreen().launch(context);
                    }),
                    16.height,
                    Row(
                      children: [
                        Image.asset(informationIcon,
                            height: 23, width: 23, color: colorPrimary),
                        8.width,
                        Text(BHTxtAccountInformation,
                                style: secondaryTextStyle())
                            .expand(),
                      ],
                    ).onTap(() {
                      AccountInformationScreen().launch(context);
                    }),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
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
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(notificationIcon,
                            height: 23, width: 23, color: colorPrimary),
                        8.width,
                        Text(BHTxtNotification, style: secondaryTextStyle())
                            .expand(),
                      ],
                    ).onTap(() {
                      BHNotificationScreen().launch(context);
                    }),
                    16.height,
                    Row(
                      children: [
                        Image.asset(inviteFriendsIcon,
                            height: 23, width: 23, color: colorPrimary),
                        8.width,
                        Text(BHTxtInviteFriends, style: secondaryTextStyle())
                            .expand(),
                      ],
                    ).onTap(() {
                      BHInviteFriendsScreen().launch(context);
                    }),
                    16.height,
                    Row(
                      children: [
                        Image.asset(settingIcon,
                            height: 23, width: 23, color: colorPrimary),
                        8.width,
                        Text(BHTxtSetting, style: secondaryTextStyle())
                            .expand(),
                      ],
                    ).onTap(() {}),
                    16.height,
                    Row(
                      children: [
                        Image.asset(terms_and_ServicesIcon,
                            height: 23, width: 23, color: colorPrimary),
                        8.width,
                        Text(BHTxtTermsOfServices, style: secondaryTextStyle())
                            .expand(),
                      ],
                    ).onTap(() {}),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, bottom: 16),
                padding: EdgeInsets.all(16.0),
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
                  children: [
                    Image.asset(logoutIcon,
                        height: 23, width: 23, color: colorPrimary),
                    8.width,
                    Text(BHTxtLogout, style: secondaryTextStyle()).expand(),
                  ],
                ).onTap(
                  () {
                    _showDialog();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
