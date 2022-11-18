// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const weather = 2;

class Forecast extends StatelessWidget {
  const Forecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage(setImageBg(weather)),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height / 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5),
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1)),
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 8, 0),
                          child: Text(
                            'Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 8, 0),
                          child: Text(
                            '1pm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 8, 0),
                          child: Text(
                            '2pm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 8, 0),
                          child: Text(
                            '3pm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 8, 0),
                          child: Text(
                            '4pm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 8, 0),
                          child: Text(
                            '5pm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 8, 0),
                          child: Text(
                            '6pm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            '7pm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(22, 15, 8, 0),
                          child: FaIcon(
                            FontAwesomeIcons.sun,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 8, 0),
                          child: FaIcon(
                            FontAwesomeIcons.cloud,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 8, 0),
                          child: FaIcon(
                            FontAwesomeIcons.cloudShowersHeavy,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 15, 8, 0),
                          child: FaIcon(
                            FontAwesomeIcons.cloudSunRain,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 15, 8, 0),
                          child: FaIcon(
                            FontAwesomeIcons.cloudMeatball,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 15, 8, 0),
                          child: FaIcon(
                            FontAwesomeIcons.snowflake,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 8, 0),
                          child: FaIcon(
                            FontAwesomeIcons.cloudBolt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: FaIcon(
                            FontAwesomeIcons.cloudShowersWater,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(23, 15, 8, 0),
                          child: Text(
                            '42°',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 8, 0),
                          child: Text(
                            '41°',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 8, 0),
                          child: Text(
                            '46°',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 15, 8, 0),
                          child: Text(
                            '48°',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 8, 0),
                          child: Text(
                            '50°',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 8, 0),
                          child: Text(
                            '49°',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
                          child: Text(
                            '46°',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 15, 0, 0),
                          child: Text(
                            '47°',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height / 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5),
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1)),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white))
                      ),
                      child: ExpansionTile(
                        title: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Tommorow',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 60),
                            FaIcon(
                              FontAwesomeIcons.snowflake,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 60),
                            Text(
                              '45°',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        children: <Widget>[
                          Column(
                            children: [
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 15, 8, 0),
                                    child: Text(
                                      'Now',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 8, 0),
                                    child: Text(
                                      '1pm',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 8, 0),
                                    child: Text(
                                      '2pm',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 8, 0),
                                    child: Text(
                                      '3pm',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 8, 0),
                                    child: Text(
                                      '4pm',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 8, 0),
                                    child: Text(
                                      '5pm',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 8, 0),
                                    child: Text(
                                      '6pm',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    child: Text(
                                      '7pm',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(22, 15, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.sun,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.cloud,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.cloudShowersHeavy,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 15, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.cloudSunRain,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(12, 15, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.cloudMeatball,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(14, 15, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.snowflake,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.cloudBolt,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.cloudShowersWater,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(23, 15, 8, 0),
                                    child: Text(
                                      '42°',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 8, 0),
                                    child: Text(
                                      '41°',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 8, 0),
                                    child: Text(
                                      '46°',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 15, 8, 0),
                                    child: Text(
                                      '48°',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 8, 0),
                                    child: Text(
                                      '50°',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 8, 0),
                                    child: Text(
                                      '49°',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 15, 8, 0),
                                    child: Text(
                                      '46°',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 15, 0, 0),
                                    child: Text(
                                      '47°',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  setImageBg(weather) {
    if (weather == 0) {
      return "assets/images/snowing.jpg";
    } else if (weather == 1) {
      return "assets/images/raining.jpg";
    } else {
      return "assets/images/sunny.jpg";
    }
  }

  setWeatherText(weather) {
    if (weather == 0) {
      return 'Snowing';
    } else if (weather == 1) {
      return "Raining";
    } else {
      return "Sunny";
    }
  }

  setWeatherIcon(weather) {
    if (weather == 0) {
      return FontAwesomeIcons.snowflake;
    } else if (weather == 1) {
      return FontAwesomeIcons.cloudShowersHeavy;
    } else {
      return FontAwesomeIcons.sun;
    }
  }
}
