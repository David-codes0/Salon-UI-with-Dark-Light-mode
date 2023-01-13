import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/main.dart';

class BHInviteFriendsScreen extends StatefulWidget {
  static String tag = '/InviteFriendsScreen';

  @override
  BHInviteFriendsScreenState createState() => BHInviteFriendsScreenState();
}

class BHInviteFriendsScreenState extends State<BHInviteFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: appStore.isDarkModeOn ? white : black),
        title: Text('Invite Friends', style: boldTextStyle(size: 18)),
      ),
      body: Container(
        color: greyColor.withOpacity(0.1),
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: greyColor.withOpacity(0.3),
                        offset: const Offset(0.0, 1.0),
                        blurRadius: 2.0)
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(inviteFriends,
                        height: 150, width: 150, fit: BoxFit.cover),
                    16.height,
                    const Text(
                      BHInviteFriendsTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          color: aappTextColorSecondary,
                          fontWeight: FontWeight.bold),
                    ),
                    16.height,
                    Row(
                      children: [
                        Container(
                          height: 45,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter HASA code',
                              hintStyle: const TextStyle(
                                  color: greyColor, fontSize: 14),
                              filled: true,
                              fillColor: greyColor.withOpacity(0.1),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: whiteColor),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: whiteColor),
                              ),
                            ),
                          ),
                        ).expand(),
                        8.width,
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: colorPrimary),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(BHTxtCopy,
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: greyColor.withOpacity(0.3),
                        offset: const Offset(0.0, 1.0),
                        blurRadius: 2.0)
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(facebookIcon, height: 40, width: 40),
                        8.width,
                        const Text(BHTxtFacebook,
                            style: TextStyle(
                                color: aappTextColorSecondary, fontSize: 14)),
                      ],
                    ),
                    16.height,
                    Row(
                      children: [
                        SvgPicture.asset(twitterIcon, height: 40, width: 40),
                        8.width,
                        const Text(BHTxtTwitter,
                            style: TextStyle(
                                color: aappTextColorSecondary, fontSize: 14)),
                      ],
                    ),
                    16.height,
                    Row(
                      children: [
                        Image.asset(instagramIcon, height: 40, width: 40),
                        8.width,
                        const Text(BHTxtInstagram,
                            style: TextStyle(
                                color: aappTextColorSecondary, fontSize: 14)),
                      ],
                    ),
                    16.height,
                    Row(
                      children: [
                        Image.asset(contactsIcon, height: 40, width: 40),
                        8.width,
                        const Text(BHTxtContacts,
                            style: TextStyle(
                                color: aappTextColorSecondary, fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
