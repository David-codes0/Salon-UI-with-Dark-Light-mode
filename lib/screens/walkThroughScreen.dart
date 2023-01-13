import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:hairsalon_prokit/main.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';

import 'loginScreen.dart';

class WalkThroughScreen extends StatefulWidget {
  static String tag = '/WalkThroughScreen';

  const WalkThroughScreen({super.key});

  @override
  WalkThroughScreenState createState() => WalkThroughScreenState();
}

class WalkThroughScreenState extends State<WalkThroughScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;
  static const _kDuration = const Duration(seconds: 1);
  static const _kCurve = Curves.ease;

  @override
  void initState() {
    super.initState();
    changeStatusColor(Colors.transparent);
  }

  @override
  void dispose() {
    super.dispose();
    changeStatusColor(appStore.isDarkModeOn ? scaffoldDarkColor : white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (i) {
              currentPage = i;
              setState(() {});
            },
            children: [
              Column(
                children: <Widget>[
                  commonCacheImageWidget(
                      walkThroughImg1, context.height() * 0.7,
                      width: context.width(), fit: BoxFit.cover),
                  16.height,
                  Text(
                    BHWalkThroughTitle1,
                    textAlign: TextAlign.center,
                    style: boldTextStyle(
                        color: appStore.isDarkModeOn
                            ? white
                            : aappTextColorPrimary,
                        size: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      BHWalkThroughSubTitle1,
                      textAlign: TextAlign.center,
                      style: secondaryTextStyle(color: aappTextColorSecondary),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  commonCacheImageWidget(
                      walkThroughImg2, context.height() * 0.7,
                      width: context.width(), fit: BoxFit.cover),
                  16.height,
                  Text(
                    BHWalkThroughTitle2,
                    textAlign: TextAlign.center,
                    style: boldTextStyle(
                        color: appStore.isDarkModeOn
                            ? white
                            : aappTextColorPrimary,
                        size: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      BHWalkThroughSubTitle2,
                      textAlign: TextAlign.center,
                      style: secondaryTextStyle(color: aappTextColorSecondary),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  commonCacheImageWidget(
                      walkThroughImg3, context.height() * 0.7,
                      width: context.width(), fit: BoxFit.cover),
                  16.height,
                  Text(
                    BHWalkThroughTitle3,
                    textAlign: TextAlign.center,
                    style: boldTextStyle(
                        color: appStore.isDarkModeOn
                            ? white
                            : aappTextColorPrimary,
                        size: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      BHWalkThroughSubTitle3,
                      textAlign: TextAlign.center,
                      style: secondaryTextStyle(color: aappTextColorSecondary),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 90,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: DotsIndicator(
                dotsCount: 3,
                position: currentPage.toDouble(),
                decorator: DotsDecorator(
                  color: greyColor.withOpacity(0.5),
                  activeColor: colorPrimary,
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: const Text('Skip',
                      style: TextStyle(color: aappTextColorSecondary)),
                  onPressed: () {
                    BHLoginScreen().launch(context);
                  },
                ),
                TextButton(
                  child: const Text(BHBtnNext,
                      style: TextStyle(color: aappTextColorSecondary)),
                  onPressed: () {
                    _pageController.nextPage(
                        duration: _kDuration, curve: _kCurve);
                  },
                )
              ],
            ).visible(
              currentPage != 2,
              defaultWidget: Container(
                margin: const EdgeInsets.only(),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 270,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: colorPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        BHLoginScreen().launch(context);
                      },
                      child: const Text(BHBtnGetStarted,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: whiteColor)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
