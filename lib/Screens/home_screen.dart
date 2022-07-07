import 'dart:html';
import 'package:url_launcher/link.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // print(height);
    // print(width);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616_960_720.jpg"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            //color: Colors.transparent.withOpacity(0.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Let's Connect",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      // fontFamily: "sans-serif",

                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    // color: Colors.lightBlueAccent,
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      LinksContainer(
                        height: height,
                        width: width,
                        icon: "assets/images/instagram.png",
                        social: "Instagram",
                        url: 'https://www.instagram.com/muckeshks/',
                      ),
                      SizedBox(height: 30),
                      LinksContainer(
                        height: height,
                        width: width,
                        icon: "assets/images/github.png",
                        social: "GitHub",
                        url: 'https://github.com/Muckesh/',
                      ),
                      SizedBox(height: 30),
                      LinksContainer(
                        height: height,
                        width: width,
                        icon: "assets/images/snapchat.png",
                        social: "Snapchat",
                        url:
                            'https://www.snapchat.com/add/muckesh_007?share_id=GOgNdwBbaqE&locale=en-US',
                      ),
                      SizedBox(height: 30),
                      LinksContainer(
                        height: height,
                        width: width,
                        icon: "assets/images/youtube.jpg",
                        social: "YouTube",
                        url: 'https://www.youtube.com/',
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LinksContainer extends StatelessWidget {
  const LinksContainer({
    Key? key,
    required this.url,
    required this.height,
    required this.width,
    required this.icon,
    required this.social,
  }) : super(key: key);

  final String url;
  final double height;
  final double width;
  final String icon;
  final String social;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      builder: (BuildContext context, Future<void> Function()? followLink) {
        return GestureDetector(
          onTap: followLink,
          child: Container(
            height: height * 0.1,
            width: width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    // color: Colors.lightBlueAccent,
                    image: DecorationImage(
                      image: AssetImage(icon),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  social,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      // fontFamily: "sans-serif",
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
