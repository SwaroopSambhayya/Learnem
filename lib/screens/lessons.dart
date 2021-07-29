import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:learnem/screens/components/Tabs.dart';
import 'package:learnem/screens/components/lessonTile.dart';
import 'package:learnem/screens/components/myIconButton.dart';

class Lessons extends StatelessWidget {
  final listData = [
    {
      "title": "The value scale and how it works",
      "time": "06:30",
      "assignments": "02",
      "imageUrl": "assets/images/person.jpg"
    },
    {
      "title": "Create amazing art using value contrast",
      "time": "8:50",
      "assignments": "04",
      "imageUrl": "assets/images/person2.jpg"
    },
    {
      "title": "Drawing makes you think",
      "time": "7:20",
      "assignments": "01",
      "imageUrl": "assets/images/person.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyIconButton(
                          iconData: IconlyLight.arrowLeft2,
                          isTransaparent: false,
                          onTap: () {
                            Navigator.pop(context);
                          }),
                      MyIconButton(
                        iconData: IconlyLight.bookmark,
                        isTransaparent: false,
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                      child: Text(
                        "Design",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFD6D2D1).withOpacity(0.4),
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Stack(
                        children: [
                          Text("Learn the basics of drawing",
                              style: Theme.of(context).textTheme.headline3),
                          SizedBox(
                            width: 5,
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Row(
                              children: [
                                Icon(
                                  IconlyBold.star,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      MyIconButton(
                        iconData: IconlyLight.document,
                        text: "11 lessons",
                      ),
                      MyIconButton(
                        iconData: IconlyLight.timeCircle,
                        text: "6 hours",
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff4a6c7a),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Tabs(),
                        ...listData.map(
                          (list) => LessonTile(
                            title: list["title"],
                            time: list["time"],
                            imageUrl: list["imageUrl"],
                            assignments: list["assignments"],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: MyIconButton(
                  text: "Start Learning...",
                  isTransaparent: false,
                  margin: 0,
                  onTap: () {},
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
