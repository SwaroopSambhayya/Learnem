import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class MyIconButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final String imageData;
  final bool isTransaparent;
  final Function onTap;
  MyIconButton(
      {this.iconData,
      this.text,
      this.imageData,
      this.isTransaparent = true,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.only(top: 17, bottom: 17, left: 16, right: 17),
        decoration: BoxDecoration(
            color: !isTransaparent
                ? Theme.of(context).primaryColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
            border: isTransaparent
                ? Border.all(color: textColor, width: 2)
                : Border.all(color: Colors.transparent),
            boxShadow: [
              if (!isTransaparent)
                BoxShadow(
                    offset: Offset(0, 5),
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 25)
            ]),
        child: Row(
          children: [
            if (iconData != null)
              Icon(
                iconData,
                color:
                    isTransaparent ? textColor : Theme.of(context).accentColor,
              ),
            if (imageData != null)
              SvgPicture.asset(
                imageData,
                color:
                    isTransaparent ? textColor : Theme.of(context).accentColor,
              ),
            if (text != null)
              Container(
                margin: EdgeInsets.only(left: 7),
                child: Text(
                  text,
                  style: TextStyle(
                      color: isTransaparent
                          ? textColor
                          : Theme.of(context).accentColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Lexend"),
                ),
              )
          ],
        ),
      ),
    );
  }
}
