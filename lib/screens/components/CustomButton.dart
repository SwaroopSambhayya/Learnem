import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color buttonColor;
  final Color textColor;
  final Border border;
  final double width;
  final double height;
  final double fontSize;
  CustomButton(
      {@required this.text,
      this.onTap,
      this.fontSize,
      this.buttonColor,
      this.textColor,
      this.border,
      @required this.width,
      @required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(23),
            border:
                border == null ? Border.all(color: Colors.transparent) : border,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 8),
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 25)
            ]),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: fontSize ?? 16,
                color: textColor,
                fontFamily: "Lexend",
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
