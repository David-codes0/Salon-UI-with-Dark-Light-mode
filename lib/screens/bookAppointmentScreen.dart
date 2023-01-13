import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hairsalon_prokit/main.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';
import 'package:nb_utils/nb_utils.dart';

class BookAppointmentScreen extends StatefulWidget {
  static String tag = '/BookAppointmentScreen';

  const BookAppointmentScreen({super.key});

  @override
  BookAppointmentScreenState createState() => BookAppointmentScreenState();
}

class BookAppointmentScreenState extends State<BookAppointmentScreen> {
  late DateTime date;
  int currentStep = 0;
  int? _radioValue1 = 0;
  Color likeButtonColor = whiteColor;

  void something(int? value) {
    setState(() {
      _radioValue1 = value;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    Widget appointmentStepper() {
      return Container(
        width: MediaQuery.of(context).size.width,
        color: greyColor.withOpacity(0.1),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
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
              Container(
                height: 210,
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(8),
                color: context.cardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(BHTxtChooseSpecialList,
                            style: TextStyle(
                                fontSize: 14,
                                color: aappTextColorPrimary,
                                fontWeight: FontWeight.bold)),
                        const Text(BHTxtHairStylists,
                            style: TextStyle(
                                color: colorPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    8.height,
                    Container(
                      height: 165,
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            color:
                                appStore.isDarkModeOn ? cardDarkColor : white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            shadowColor: Colors.grey.withOpacity(0.3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  dashedBoardImage6,
                                  height: 110,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ).cornerRadiusWithClipRRectOnly(
                                    topLeft: 10, topRight: 10),
                                Text('Joseph Drake',
                                        style: boldTextStyle(),
                                        textAlign: TextAlign.center)
                                    .paddingOnly(top: 16),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(top: 8),
                color: context.cardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(BHTxtAvailableSlot, style: boldTextStyle()),
                    8.height,
                    Wrap(
                      spacing: 16.0,
                      children: [
                        raiseButton(
                            btnText: '7:30 - 8:30 AM',
                            color: context.cardColor),
                        raiseButton(
                            btnText: '9:30 - 10:30 AM',
                            color: context.cardColor),
                        raiseButton(
                            btnText: '4:30 - 5:30 AM',
                            color: context.cardColor),
                        raiseButton(
                            btnText: '6:30 - 7:30 AM',
                            color: context.cardColor),
                        raiseButton(
                            btnText: '1:30 - 2:30 AM',
                            color: context.cardColor),
                        raiseButton(
                            btnText: '3:30 - 4:30 AM',
                            color: context.cardColor),
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

    Widget paymentStepper() {
      return SingleChildScrollView(
        child: Container(
          color: greyColor.withOpacity(0.1),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Services', style: boldTextStyle()),
              Container(
                margin: const EdgeInsets.only(top: 8),
                color: context.cardColor,
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
                              width: 120,
                              fit: BoxFit.cover),
                        ),
                        8.width,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Conado Hair Studio', style: boldTextStyle()),
                            8.height,
                            Row(
                              children: [
                                const Icon(Icons.location_on,
                                    size: 12, color: aappTextColorSecondary),
                                Text('301 Dorthy ,chicago',
                                    style: secondaryTextStyle()),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    16.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Makeup Marguerite',
                            style: boldTextStyle(size: 14)),
                        const Text('1:30 - 2:30 PM',
                            style:
                                TextStyle(color: colorPrimary, fontSize: 14)),
                      ],
                    ),
                    16.height,
                    Row(
                      children: [
                        const Icon(Icons.person,
                            size: 14, color: aappTextColorSecondary),
                        Text('Lettie Neal', style: secondaryTextStyle())
                            .paddingOnly(left: 4),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('1:30-2:30 PM',
                              style: primaryTextStyle(size: 14)),
                          Text('June 15,2020',
                              style: primaryTextStyle(size: 14)),
                          Text('\$25', style: boldTextStyle(size: 14))
                              .paddingOnly(left: 45),
                        ],
                      ),
                    ),
                    8.height,
                    Container(
                        height: 1,
                        width: context.width(),
                        color: greyColor.withOpacity(0.3)),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Pay', style: boldTextStyle(size: 14)),
                          const Text('\$25',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: colorPrimary,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ).paddingAll(8),
              ),
              16.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(BHTxtPaymentMethods, style: boldTextStyle()),
                  Text(BHTxtAddMethod,
                      style: boldTextStyle(color: colorPrimary)),
                ],
              ),
              8.height,
              Container(
                margin: const EdgeInsets.only(top: 8),
                color: context.cardColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(visaCardImg, height: 40, width: 40),
                        16.width,
                        Text('**** **** *123', style: boldTextStyle()),
                      ],
                    ),
                    Radio(
                        value: 0,
                        groupValue: _radioValue1,
                        activeColor: colorPrimary,
                        onChanged: (dynamic value) => something(value)),
                  ],
                ).paddingSymmetric(horizontal: 8),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                color: context.cardColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(masterCardImg, height: 40, width: 40),
                        16.width,
                        Text('**** **** *333', style: boldTextStyle()),
                      ],
                    ),
                    Radio(
                      value: 1,
                      groupValue: _radioValue1,
                      activeColor: colorPrimary,
                      focusColor: aappTextColorSecondary,
                      onChanged: (dynamic value) => something(value),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 8),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 8),
                color: context.cardColor,
                child: Text('Payment in case', style: boldTextStyle())
                    .paddingAll(16),
              ),
            ],
          ),
        ),
      );
    }

    Widget finishedStepper() {
      return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          color: greyColor.withOpacity(0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height / 2.5,
                color: context.cardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Marguerite Hair Salon', style: boldTextStyle()),
                        16.height,
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                size: 14, color: aappTextColorSecondary),
                            8.width,
                            Text('301 Dorthy walks,chicago,Us.',
                                style: secondaryTextStyle(size: 12)),
                          ],
                        ),
                        16.height,
                        Text('146566311684641', style: boldTextStyle(size: 14)),
                      ],
                    ),
                    8.height,
                    Container(
                        height: 1,
                        width: context.width(),
                        color: greyColor.withOpacity(0.3)),
                    8.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hair Styling', style: boldTextStyle(size: 14)),
                        Text('June 15,2020',
                            style:
                                boldTextStyle(color: colorPrimary, size: 14)),
                      ],
                    ),
                    16.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.person,
                                size: 14, color: aappTextColorSecondary),
                            Text('Lettie Neal', style: secondaryTextStyle())
                                .paddingOnly(left: 8),
                          ],
                        ),
                        Text('1:30 - 2:30 PM',
                            style:
                                boldTextStyle(color: colorPrimary, size: 14)),
                      ],
                    ),
                    8.height,
                    Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: greyColor.withOpacity(0.3)),
                    8.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Scan Barcode', style: boldTextStyle(size: 14)),
                        Image.asset(barCodeImg, height: 50, width: 120),
                      ],
                    ),
                  ],
                ),
              ),
              16.height,
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: colorPrimary,
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      child: Text(BHTxtBookMoreAppointment,
                          style: boldTextStyle(color: white)),
                    ),
                  ),
                  8.height,
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: context.cardColor,
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: colorPrimary)),
                      ),
                      child: Text(BHTxtGoAppointment,
                          style: boldTextStyle(color: colorPrimary)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Map<int, Color> color = {
      50: const Color.fromRGBO(136, 14, 79, .1),
      100: const Color.fromRGBO(136, 14, 79, .2),
      200: const Color.fromRGBO(136, 14, 79, .3),
      300: const Color.fromRGBO(136, 14, 79, .4),
      400: const Color.fromRGBO(136, 14, 79, .5),
      500: const Color.fromRGBO(136, 14, 79, .6),
      600: const Color.fromRGBO(136, 14, 79, .7),
      700: const Color.fromRGBO(136, 14, 79, .8),
      800: const Color.fromRGBO(136, 14, 79, .9),
      900: const Color.fromRGBO(136, 14, 79, 1),
    };

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Book Appointment', style: boldTextStyle(size: 18)),
          centerTitle: true,
          iconTheme:
              IconThemeData(color: appStore.isDarkModeOn ? white : black),
          leading: const Icon(Icons.arrow_back).onTap(
            () {
              finish(context);
            },
          ),
        ),
        body: Theme(
          data: ThemeData(
              primarySwatch: MaterialColor(0xFFff6e40, color),
              backgroundColor: redColor),
          child: Stepper(
            type: StepperType.horizontal,
            physics: const BouncingScrollPhysics(),
            controlsBuilder: (context, controlsDetails) => Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentStep > 0) {
                          setState(() {
                            currentStep -= 1;
                          });
                        } else {
                          currentStep = 0;
                          finish(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                        primary: colorPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      child: Text(BHBtnCancel,
                          style: boldTextStyle(color: whiteColor)),
                    ),
                  ),
                  Container(
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentStep < 2) {
                          setState(() {
                            currentStep += 1;
                          });
                        } else {
                          currentStep = 0;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: colorPrimary,
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      child: Text(BHBtnContinue,
                          style: boldTextStyle(color: whiteColor)),
                    ),
                  ),
                ],
              ),
            ),
            steps: [
              Step(
                title: const Text(BHStepperBookAppointment,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: aappTextColorSecondary)),
                content: Container(child: appointmentStepper()),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: const Text(BHStepperPayment,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: aappTextColorSecondary)),
                content: paymentStepper(),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 1 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: const Text(BHStepperFinished,
                    style: TextStyle(color: aappTextColorSecondary)),
                content: finishedStepper(),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 2 ? StepState.complete : StepState.disabled,
              ),
            ],
            currentStep: currentStep,
            onStepTapped: (step) {
              currentStep = step;
            },
          ),
        ),
      ),
    );
  }
}
