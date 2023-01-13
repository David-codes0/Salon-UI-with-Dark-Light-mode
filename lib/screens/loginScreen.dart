import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hairsalon_prokit/utils/colors.dart';
import 'package:hairsalon_prokit/utils/constants.dart';
import 'package:hairsalon_prokit/utils/images.dart';
import 'package:hairsalon_prokit/utils/widgets.dart';
import 'package:nb_utils/nb_utils.dart';

import 'dashedBoardScreen.dart';
import 'forgotPasswordScreen.dart';
import 'registrationScreen.dart';

class BHLoginScreen extends StatefulWidget {
  static String tag = '/LoginScreen';

  const BHLoginScreen({super.key});

  @override
  BHLoginScreenState createState() => BHLoginScreenState();
}

class BHLoginScreenState extends State<BHLoginScreen> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();
  bool _showPassword = false;
  FocusNode emailFocusNode = FocusNode();
  FocusNode passWordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    changeStatusColor(colorPrimary);
  }

  @override
  void dispose() {
    super.dispose();
    changeStatusColor(Colors.transparent);
    emailFocusNode.dispose();
    passWordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorPrimary,
        body: Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(appLogo,
                    color: white.withOpacity(0.8), height: 150, width: 150),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 200),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                color: context.cardColor,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: emailCont,
                      focusNode: emailFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(passWordFocusNode);
                      },
                      style: primaryTextStyle(),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colorPrimary)),
                        labelText: "Email",
                        labelStyle: TextStyle(color: greyColor, fontSize: 14),
                      ),
                    ),
                    TextFormField(
                      controller: passwordCont,
                      focusNode: passWordFocusNode,
                      obscureText: !_showPassword,
                      keyboardType: TextInputType.text,
                      style: primaryTextStyle(),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle:
                            const TextStyle(color: greyColor, fontSize: 14),
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
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: aappDividerColor)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: colorPrimary)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: const Text(BHTxtForgetPwd,
                              style: TextStyle(
                                  color: aappTextColorSecondary, fontSize: 14))
                          .onTap(
                        () {
                          BHForgotPasswordScreen().launch(context);
                        },
                      ),
                    ),
                    16.height,
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: colorPrimary,
                          padding: const EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        onPressed: () {
                          DashedBoardScreen().launch(context);
                        },
                        child: const Text(
                          BHBtnSignIn,
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    16.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                                height: 1,
                                color: aappDividerColor,
                                margin: const EdgeInsets.only(right: 10))
                            .expand(),
                        Text(BHTxtOrSignIn, style: secondaryTextStyle()),
                        Container(
                                height: 1,
                                color: aappDividerColor,
                                margin: const EdgeInsets.only(left: 10))
                            .expand(),
                      ],
                    ),
                    16.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(twitterIcon, height: 40, width: 40),
                        SvgPicture.asset(facebookIcon, height: 40, width: 40),
                        SvgPicture.asset(pinterestIcon, height: 40, width: 40),
                      ],
                    ),
                    24.height,
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: const Text.rich(
                        TextSpan(
                          text: "You don't have an account! ",
                          style: TextStyle(color: aappTextColorSecondary),
                          children: <TextSpan>[
                            TextSpan(
                                text: BHBtnSignUp,
                                style: TextStyle(color: colorPrimary)),
                          ],
                        ),
                      ).onTap(
                        () {
                          BHRegistrationScreen().launch(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
