import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LessonTile extends StatelessWidget {
  final String title;
  final String time;
  final String assignments;
  final String imageUrl;
  LessonTile({this.title, this.time, this.assignments, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15, right: 10, left: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xffBBCBD3).withOpacity(0.3),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: FittedBox(
              child: Stack(
                children: [
                  Image.asset(
                    imageUrl,
                    height: 90,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.4),
                        radius: 20,
                        child: Icon(
                          IconlyBold.arrowRight2,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(IconlyLight.timeCircle,
                        color: Theme.of(context).primaryColor),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    if (MediaQuery.of(context).size.width > 330) Spacer(),
                    if (MediaQuery.of(context).size.width < 330)
                      SizedBox(
                        width: 5,
                      ),
                    Icon(IconlyLight.paper,
                        color: Theme.of(context).primaryColor),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      assignments + " assignments",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize:
                              MediaQuery.of(context).size.width < 330 ? 10 : 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
