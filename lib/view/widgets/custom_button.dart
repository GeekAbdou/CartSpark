import 'package:flutter/material.dart';

import 'package:sparkcart/constants.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;
  final double  padding;
  CustomButton({
    @required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
    @required this.padding ,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(padding),
      onPressed: onPress,
      color: primaryColor,
      child: CustomText(
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
      ),
    );
  }
}