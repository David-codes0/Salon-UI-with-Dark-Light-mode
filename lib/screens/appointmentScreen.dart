import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:hairsalon_prokit/main.dart';

class AppointmentScreen extends StatefulWidget {
  static String tag = '/AppointmentBottomNavigationBarScreen';

  const AppointmentScreen({super.key});

  @override
  AppointmentScreenState createState() => AppointmentScreenState();
}

class AppointmentScreenState extends State<AppointmentScreen>
    with SingleTickerProviderStateMixin {
  bool isSwitched = false;

  late DateTime date;

  _pickDate() async {
    DateTime? time = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (time != null) {
      setState(() {
        date = time;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    date = DateTime.now();
  }

  Widget ongoingAppointmentWidget() {
    return Container(
      color: appStore.isDarkModeOn
          ? scaffoldDarkColor
          : greyColor.withOpacity(0.1),
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
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
              child: ListTile(
                title: Text('Date : ${date.day}/ ${date.month}/ ${date.year}',
                    style: const TextStyle(color: aappTextColorSecondary)),
                trailing: const Icon(Icons.keyboard_arrow_down,
                    color: aappTextColorSecondary),
                onTap: () => _pickDate(),
              ),
            ),
            16.height,
            Container(
              padding: const EdgeInsets.all(8),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: CachedNetworkImage(
                            placeholder: placeholderWidgetFn() as Widget
                                Function(BuildContext, String)?,
                            imageUrl: dashedBoardImage4,
                            height: 70,
                            width: 130,
                            fit: BoxFit.cover),
                      ),
                      10.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Conado Hair Studio',
                              style: boldTextStyle(size: 14)),
                          8.height,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.location_on,
                                      size: 14, color: aappTextColorSecondary)
                                  .paddingOnly(top: 2),
                              Text('301 Dorthy walks,chicago,Us.',
                                      style: secondaryTextStyle(size: 12))
                                  .expand(),
                            ],
                          ),
                        ],
                      ).expand(),
                    ],
                  ),
                  8.height,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Makeup Marguerite',
                            style: boldTextStyle(size: 14)),
                        Text('1:30 - 2:30 PM',
                            style: primaryTextStyle(
                                color: colorPrimary, size: 14)),
                      ]),
                  8.height,
                  Row(
                    children: [
                      const Icon(Icons.person,
                          size: 14, color: aappTextColorSecondary),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text('Lettie Neal', style: secondaryTextStyle()),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Scan Barcode', style: secondaryTextStyle()),
                      Image.asset(barCodeImg, height: 50, width: 120),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Remind me 1h in advance',
                          style: secondaryTextStyle()),
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          value: isSwitched,
                          activeColor: colorPrimary,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget historyAppointmentWidget() {
    return Container(
      color: appStore.isDarkModeOn
          ? scaffoldDarkColor
          : greyColor.withOpacity(0.1),
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: CachedNetworkImage(
                            placeholder: placeholderWidgetFn() as Widget
                                Function(BuildContext, String)?,
                            imageUrl: dashedBoardImage4,
                            height: 70,
                            width: 130,
                            fit: BoxFit.cover),
                      ),
                      8.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Conado  Hair Studio',
                              style: boldTextStyle(size: 14)),
                          8.height,
                          Row(
                            children: [
                              const Icon(Icons.location_on,
                                  size: 14, color: aappTextColorSecondary),
                              4.width,
                              Text('301 Dorthy walks',
                                  style: secondaryTextStyle()),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  8.height,
                  Text('Makeup Marguerite', style: secondaryTextStyle()),
                  8.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.person,
                              size: 14, color: aappTextColorSecondary),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text('Lettie Neal',
                                style: secondaryTextStyle()),
                          ),
                        ],
                      ),
                      const Text('March 24, 2020',
                          style: TextStyle(
                              color: aappTextColorPrimary, fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            labelColor: colorPrimary,
            unselectedLabelColor:
                appStore.isDarkModeOn ? white : aappTextColorPrimary,
            indicatorColor: colorPrimary,
            onTap: (index) {},
            tabs: [
              const Tab(
                  child: Text(BHTabOngoing, style: TextStyle(fontSize: 14))),
              const Tab(
                  child: Text(BHTabHistory, style: TextStyle(fontSize: 14))),
            ],
          ),
          body: TabBarView(
            children: [
              ongoingAppointmentWidget(),
              historyAppointmentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
