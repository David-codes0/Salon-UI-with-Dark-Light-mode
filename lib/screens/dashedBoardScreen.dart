import 'package:flutter/material.dart';
import 'package:hairsalon_prokit/main.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';
import 'package:nb_utils/nb_utils.dart';

import 'appointmentScreen.dart';
import 'discoverScreen.dart';
import 'messagesScreen.dart';
import 'notifyScreen.dart';
import 'profileScreen.dart';

class DashedBoardScreen extends StatefulWidget {
  static String tag = '/DashedBoardScreen';

  @override
  DashedBoardScreenState createState() => DashedBoardScreenState();
}

class DashedBoardScreenState extends State<DashedBoardScreen> {
  int _selectedIndex = 0;
  var _pages = [
    DiscoverScreen(),
    NotifyScreen(),
    const AppointmentScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    changeStatusColor(appStore.isDarkModeOn ? scaffoldDarkColor : white);
  }

  _bottomTab() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(color: colorPrimary),
      selectedItemColor: colorPrimary,
      unselectedLabelStyle: TextStyle(color: greyColor),
      unselectedItemColor: greyColor,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Discover'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Notify'),
        BottomNavigationBarItem(
            icon: Icon(Icons.date_range), label: 'Appointment'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _bottomTab(),
        body: Center(child: _pages.elementAt(_selectedIndex)),
      ),
    );
  }
}
