import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/model/model.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/dataProvider.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:hairsalon_prokit/main.dart';

import 'chatScreen.dart';
import 'videoCallingScreen.dart';

class MessagesScreen extends StatefulWidget {
  static String tag = '/MessagesBottomNavigationBarScreen';

  const MessagesScreen({super.key});

  @override
  MessagesScreenState createState() => MessagesScreenState();
}

class MessagesScreenState extends State<MessagesScreen>
    with SingleTickerProviderStateMixin {
  late List<MessageModel> messageList;
  late List<CallModel> callList;

  @override
  void initState() {
    super.initState();
    messageList = getMessageList();
    callList = getCallList();
  }

  Widget chatMassagesWidget() {
    return Container(
      color: greyColor.withOpacity(0.1),
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Theme(
                  data: Theme.of(context)
                      .copyWith(splashColor: Colors.transparent),
                  child: TextField(
                    autofocus: false,
                    style: const TextStyle(fontSize: 16.0, color: greyColor),
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: const Icon(Icons.search, color: greyColor),
                      fillColor: context.cardColor,
                      hintText: 'Search',
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: whiteColor),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: whiteColor),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ).expand(),
                ),
                16.width,
                Container(
                  child: Image.asset(messageIcon, width: 30, height: 30),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: context.cardColor),
                ),
              ],
            ),
            16.height,
            ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(color: greyColor.withOpacity(0.3), indent: 6),
              itemCount: messageList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    messageList[index].img.validate().startsWith('http')
                        ? Image.network(messageList[index].img!)
                        : CircleAvatar(
                            backgroundImage:
                                AssetImage(messageList[index].img!),
                            radius: 25),
                    16.width,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(messageList[index].name!,
                              style: boldTextStyle(size: 14)),
                        ),
                        8.height,
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(messageList[index].message!,
                              style: const TextStyle(
                                  fontSize: 12, color: greyColor)),
                        ),
                      ],
                    ).expand(),
                    Text(messageList[index].lastSeen!,
                        style: secondaryTextStyle()),
                  ],
                ).onTap(() {
                  String? img = messageList[index].img;
                  String? name = messageList[index].name;
                  ChatScreen(img: img, name: name).launch(context);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget callsWidget() {
    return Container(
      color: greyColor.withOpacity(0.1),
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(splashColor: Colors.transparent),
              child: TextField(
                autofocus: false,
                style: const TextStyle(fontSize: 16.0, color: greyColor),
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: const Icon(Icons.search, color: greyColor),
                  fillColor: context.cardColor,
                  hintText: 'Search',
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: whiteColor),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: whiteColor),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(color: greyColor.withOpacity(0.3), indent: 5),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: callList.length,
              padding: const EdgeInsets.only(top: 16),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    callList[index].img.validate().startsWith('http')
                        ? Image.network(
                            callList[index].img!,
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ).cornerRadiusWithClipRRect(25)
                        : CircleAvatar(
                            backgroundImage: AssetImage(callList[index].img!),
                            radius: 25),
                    8.width,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(callList[index].name!,
                              style: boldTextStyle(size: 14)),
                          8.height,
                          Row(
                            children: [
                              Icon(callList[index].callImg, size: 14),
                              8.width,
                              Text(
                                callList[index].callStatus!,
                                style: const TextStyle(
                                    color: aappTextColorSecondary,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Image.asset(callList[index].videoCallIcon!,
                              height: 40, width: 40),
                          onPressed: () {
                            const VideoCallingScreen().launch(context);
                          },
                        ),
                        IconButton(
                          icon: Image.asset(callList[index].audioCallIcon!,
                              height: 40, width: 40),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          labelColor: colorPrimary,
          unselectedLabelColor:
              appStore.isDarkModeOn ? white : aappTextColorPrimary,
          indicatorColor: colorPrimary,
          onTap: (index) {},
          tabs: [
            const Tab(
                child: Text(BHTabMessages, style: TextStyle(fontSize: 14))),
            const Tab(child: Text(BHTabCalls, style: TextStyle(fontSize: 14))),
          ],
        ),
        body: TabBarView(children: [
          chatMassagesWidget(),
          callsWidget(),
        ]),
      ),
    );
  }
}
