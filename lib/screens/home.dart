import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnem/screens/components/myIconButton.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String activeTab = "Design";
  setActive(String active) {
    setState(() {
      activeTab = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(bottom: 70),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyIconButton(
                          iconData: IconlyLight.search,
                          isTransaparent: false,
                        ),
                        Stack(
                          children: [
                            MyIconButton(
                              iconData: IconlyLight.notification,
                              isTransaparent: false,
                            ),
                            Positioned(
                              right: 7,
                              top: 7,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.orange[300],
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Text(
                        "What you want to Learn Today?",
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(fontSize: 40),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MyIconButton(
                            imageData: "assets/images/pen2.svg",
                            text: "Design",
                            isTransaparent:
                                activeTab == "Design" ? false : true,
                            onTap: () {
                              setActive("Design");
                            },
                          ),
                          MyIconButton(
                            imageData: "assets/images/coding.svg",
                            text: "Coding",
                            isTransaparent:
                                activeTab == "Coding" ? false : true,
                            onTap: () {
                              setActive("Coding");
                            },
                          ),
                          MyIconButton(
                            text: "Photography",
                            isTransaparent:
                                activeTab == "Photography" ? false : true,
                            onTap: () {
                              setActive("Photography");
                            },
                            iconData: IconlyLight.camera,
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Most Popular:",
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              .copyWith(fontSize: 30),
                        ),
                      ),
                    ),
                    MostPopular(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              CourseCard(
                                  maxWidth: MediaQuery.of(context).size.width,
                                  imageUrl: "assets/images/person2.jpg"),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Category(
                                  text: "UI/UX principles",
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Column(
                                children: [
                                  Container(
                                      width: constraints.maxWidth,
                                      child: Category(
                                        text: "App \Design",
                                      )),
                                  CourseCard(
                                      maxWidth: constraints.maxWidth,
                                      maxHeight: constraints.maxHeight,
                                      imageUrl: "assets/images/person.jpg")
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 10,
              left: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: Icon(
                          IconlyLight.category,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          IconlyLight.chat,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          IconlyLight.bag,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          IconlyLight.bookmark,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          IconlyLight.profile,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String text;
  Category({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 25, left: 20, right: 20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffBBCBD3).withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final double maxWidth;
  final double maxHeight;
  final String imageUrl;
  CourseCard({this.maxWidth = 150, this.maxHeight = 130, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xffBBCBD3).withOpacity(0.3),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              width: maxWidth,
              fit: BoxFit.cover,
            ),
          ),
          Stack(
            children: [
              Container(
                width: 150,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset(
                    "assets/images/arrow.svg",
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                child: Text(
                  "Free \nSeminar",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "28 Jul, 2021",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class MostPopular extends StatelessWidget {
  const MostPopular({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15, right: 10, left: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffBBCBD3).withOpacity(0.3),
        borderRadius: BorderRadius.circular(22),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/images/artist.jpg"),
        ),
        title: Text(
          "The Ultimate Pro Drawing Special Course",
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RatingBar(
                itemSize: 20,
                itemPadding: EdgeInsets.only(top: 7),
                initialRating: 4,
                itemCount: 5,
                ratingWidget: RatingWidget(
                  full: Icon(
                    IconlyBold.star,
                    color: Theme.of(context).primaryColor,
                  ),
                  half: Icon(IconlyBold.star,
                      color: Theme.of(context).primaryColor),
                  empty: Icon(
                    IconlyBold.star,
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                  ),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                }),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "\$12.50",
                style: TextStyle(
                    fontFamily: "Lexend",
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
