import 'package:chat_app/common_widget/space_widget.dart';
import 'package:chat_app/utils/size_utils/size_utils.dart';
import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeUtils().wp(4)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [BackButton()],
                ),
                Text(
                  "Enter Your Phone Number",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                verticalSpace(SizeUtils().wp(2)),
                Text(
                  "Please confirm your country code and enter",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                Text(
                  "your mobile number",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                Row(
                  children: [
                    Container(
                      child: TextField(
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
