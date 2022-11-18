import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:weather_app/SearchScreen.dart';
import 'package:weather_app/HomePage.dart';
import 'package:weather_app/swip.dart';

import 'Profil.dart';

class navigation_bar extends StatefulWidget {
  const navigation_bar({Key? key}) : super(key: key);

  @override
  State<navigation_bar> createState() => _navigation_barState();
}

class _navigation_barState extends State<navigation_bar> {

  var pagesAll = [Swip(),Profil(),SearchScreen(),];

  var myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.black87)),
        child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ConvexAppBar(
                backgroundColor: Color(0xff9AC6E9),
                color: Colors.white,
                activeColor: Colors.black,
                style: TabStyle.fixedCircle,
                items: [
                  TabItem(icon: Icons.home,),
                  TabItem(icon: Icons.map, ),
                  TabItem(icon: Icons.search, ),
                  TabItem(icon: Icons.message, ),
                  TabItem(icon: Icons.people, ),
                ],
                onTap: (index) => {
                      setState(() {
                        myindex = index;
                      })
                    })),
      ),
      body: pagesAll[myindex],
    );
  }
}
