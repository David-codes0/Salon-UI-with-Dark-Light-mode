import 'dart:async';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hairsalon_prokit/screens/walkThroughScreen.dart';
import 'package:hairsalon_prokit/main.dart';

class SplashScreen extends StatefulWidget {
  static String tag = '/BHSplashScreen';

  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    Timer(const Duration(seconds: 5), () {
      finish(context);
      const WalkThroughScreen().launch(context);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'images/bh_logo.svg',
          height: 250,
          width: 250,
          color: appStore.isDarkModeOn ? white : Colors.black.withOpacity(0.7),
        ),
      ),
    );
  }
}
