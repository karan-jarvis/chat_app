import 'package:chat_app/ui_helper/colors.dart';
import 'package:chat_app/utils/size_utils/size_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  const CommonButton({Key? key, this.buttonText, required this.onTap}) : super(key: key);
  final buttonText;
  final Function() onTap;

  @override
  _CommonButtonState createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: SizeUtils().wp(15),
        decoration: BoxDecoration(color: blueColor,borderRadius: BorderRadius.circular(SizeUtils().wp(10))),
        child: Text(
          widget.buttonText,
          style: TextStyle(
              color: whiteColor, fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}
