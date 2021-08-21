import 'package:chat_app/common_widget/common_button_widget.dart';
import 'package:chat_app/common_widget/space_widget.dart';
import 'package:chat_app/navigation/routes_key.dart';
import 'package:chat_app/ui_helper/images.dart';
import 'package:chat_app/ui_helper/strings.dart';
import 'package:chat_app/utils/size_utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeUtils().wp(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(SizeUtils().wp(10)),
                Center(child: SvgPicture.asset(introScreenImage)),
                verticalSpace(SizeUtils().wp(10)),
                Text(
                  connectEasilyWith,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                Text(
                  "your family and friends",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                Text(
                  "over countries",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Terms & Privacy Policy",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      verticalSpace(SizeUtils().wp(4)),
                      CommonButton(
                        buttonText: "Start messaging",
                        onTap: () {
                          Navigator.pushNamed(context, Routes.PHONE_NUMBER_SCREEN);
                        },
                      ),
                      verticalSpace(SizeUtils().wp(5)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
