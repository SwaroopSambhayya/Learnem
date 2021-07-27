import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnem/screens/components/CustomButton.dart';
import 'package:learnem/screens/home.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned.fill(
                top: 35,
                child: Text(
                  "Design \n Studylli\nLearn",
                  style: TextStyle(
                    fontSize: 100,
                    fontFamily: "Abril",
                    color: Color(0xffBBCBD3).withOpacity(0.2),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/images/stars.svg"),
                        SizedBox(width: 8),
                        Text(
                          "EDU",
                          style: TextStyle(
                            fontFamily: "Abril",
                            fontSize: 38,
                            color: Color(0xfff1edb7),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    "assets/images/onboarding.png",
                    width: MediaQuery.of(context).size.width * 0.95,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Learning Makes Me Happy",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    text: "Get Started",
                    fontSize: 20,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 70,
                    textColor: Theme.of(context).scaffoldBackgroundColor,
                    buttonColor: Color(0xffF8F2DB),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
