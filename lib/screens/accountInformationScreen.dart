import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairsalon_prokit/main.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:nb_utils/nb_utils.dart';

class AccountInformationScreen extends StatefulWidget {
  static String tag = '/AccountInformationScreen';

  const AccountInformationScreen({super.key});

  @override
  AccountInformationScreenState createState() =>
      AccountInformationScreenState();
}

class AccountInformationScreenState extends State<AccountInformationScreen> {
  bool _showPassword = true;
  TextEditingController fullNameCont = TextEditingController();
  TextEditingController dOBCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController phoneNumCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode fullNameFocusNode = FocusNode();
  FocusNode dOBFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode phoneNumFocusNode = FocusNode();
  FocusNode passWordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          iconTheme:
              IconThemeData(color: appStore.isDarkModeOn ? white : black),
          title: Text(
            BHTxtAccountInformation,
            style: boldTextStyle(),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(BHTxtEdit,
                    style: TextStyle(
                        color: colorPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ]),
      body: Container(
        color: greyColor.withOpacity(0.1),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                color: context.cardColor,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Center(
                        child: CircleAvatar(
                            backgroundImage: AssetImage(dashedBoardImage3),
                            radius: 50)),
                    Padding(
                      padding: EdgeInsets.only(left: 80, top: 60),
                      child: IconButton(
                          icon: Image.asset(addIcon, height: 21, width: 21),
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.cardColor,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 1.0),
                        color: greyColor.withOpacity(0.3),
                        blurRadius: 2.0),
                  ],
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: fullNameCont,
                      focusNode: fullNameFocusNode,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(dOBFocusNode);
                      },
                      style: primaryTextStyle(),
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        labelStyle: primaryTextStyle(size: 14),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                      ),
                    ),
                    TextFormField(
                      controller: dOBCont,
                      focusNode: dOBFocusNode,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(emailFocusNode);
                      },
                      style: primaryTextStyle(),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                        labelText: "Date of Birth",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2014, 8),
                              lastDate: DateTime(2101),
                            );
                          },
                          child: Icon(Icons.calendar_today,
                              color: colorPrimary, size: 16),
                        ),
                        labelStyle: primaryTextStyle(size: 14),
                      ),
                    ),
                    TextFormField(
                      controller: emailCont,
                      focusNode: emailFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(phoneNumFocusNode);
                      },
                      style: primaryTextStyle(),
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: primaryTextStyle(size: 14),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                      ),
                    ),
                    TextFormField(
                      controller: phoneNumCont,
                      focusNode: phoneNumFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(passWordFocusNode);
                      },
                      style: primaryTextStyle(),
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: primaryTextStyle(size: 14),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                      ),
                    ),
                    TextFormField(
                      controller: passwordCont,
                      focusNode: passWordFocusNode,
                      obscureText: _showPassword,
                      keyboardType: TextInputType.text,
                      style: primaryTextStyle(),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: primaryTextStyle(size: 14),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: colorPrimary,
                              size: 20),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                      ),
                    ),
                    24.height,
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
