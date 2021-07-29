import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: Theme.of(context).accentColor.withOpacity(0.5),
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                IconlyLight.chat,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {}),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
                icon: Icon(
                  IconlyLight.bag,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {}),
          ),
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
    );
  }
}
