import 'package:flutter/material.dart';
import 'package:learnem/screens/components/myIconButton.dart';

class Tabs extends StatefulWidget {
  const Tabs({
    Key key,
  }) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  String active = "Lessons";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyIconButton(
                  text: "About",
                  margin: 0,
                  onTap: () {
                    setState(() {
                      active = "About";
                    });
                  },
                  isTransaparent: !(active == "About"),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
              ),
              Expanded(
                child: MyIconButton(
                  text: "Lessons",
                  padding: MediaQuery.of(context).size.width < 330
                      ? EdgeInsets.only(left: 0, top: 17, bottom: 17)
                      : null,
                  margin: 0,
                  onTap: () {
                    setState(() {
                      active = "Lessons";
                    });
                  },
                  isTransaparent: !(active == "Lessons"),
                  borderRadius: BorderRadius.zero,
                ),
              ),
              Expanded(
                child: MyIconButton(
                  text: "Chat",
                  margin: 0,
                  onTap: () {
                    setState(() {
                      active = "Chat";
                    });
                  },
                  isTransaparent: !(active == "Chat"),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
