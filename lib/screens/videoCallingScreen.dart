import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hairsalon_prokit/main.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';
import 'package:nb_utils/nb_utils.dart';

class VideoCallingScreen extends StatefulWidget {
  static String tag = '/VideoCallingScreen';

  const VideoCallingScreen({super.key});

  @override
  VideoCallingScreenState createState() => VideoCallingScreenState();
}

class VideoCallingScreenState extends State<VideoCallingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: appStore.isDarkModeOn ? white : black),
        title: const Text('Carlos Day', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.camera_alt, color: Colors.white)),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          commonCacheImageWidget(
            callingBackgroundImg,
            MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 50,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: commonCacheImageWidget(dDashedBoardImage5, 180,
                  width: 130, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
