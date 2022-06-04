// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_satu/screens/utils/hover_button.dart';
import 'package:latihan_satu/screens/utils/image_holder.dart';
import 'package:latihan_satu/screens/utils/nav_bar_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.purple;
  double image1right = 150.0;
  double image2right = -700.0;
  double image3right = -700.0;
  void changer(int a) {
    setState(() {
      if (a == 1) {
        color = Colors.purple;
        image1right = 150.0;
        image2right = -700.0;
        image3right = -700.0;
      } else if (a == 2) {
        color = Colors.pink;
        image1right = -700.0;
        image2right = 150.0;
        image3right = -700.0;
      } else if (a == 3) {
        color = Colors.green;
        image1right = -700.0;
        image2right = -700.0;
        image3right = 150.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: -100,
            right: -200,
            child: AnimatedContainer(
              duration: Duration(microseconds: 500),
              curve: Curves.easeIn,
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.5),
              ),
            ),
          ),
          ImageHolder(
            image: 'assets/burger_1.png',
            right: image1right,
          ),
          ImageHolder(
            image: 'assets/burger_2.png',
            right: image2right,
          ),
          ImageHolder(
            image: 'assets/burger_3.png',
            right: image3right,
          ),
          Positioned(
              bottom: 20,
              right: MediaQuery.of(context).size.width * 0.3,
              child: SizedBox(
                width: 500,
                child: Row(
                  children: [
                    HoverButton(
                      text: 'Meenira',
                      hover: () {
                        changer(1);
                      },
                    ),
                    HoverButton(
                      text: 'Cheezurian',
                      hover: () {
                        changer(2);
                      },
                    ),
                    HoverButton(
                      text: 'Maccara',
                      hover: () {
                        changer(3);
                      },
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    NavBarButton(
                      text: "What's New",
                    ),
                    NavBarButton(
                      text: "Home",
                    ),
                    NavBarButton(
                      text: "Menu",
                    ),
                    NavBarButton(
                      text: "Contact",
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "It's not just a burger.",
                  style: GoogleFonts.rubik(
                    fontSize: 54,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "It's ",
                      style: GoogleFonts.rubik(
                        fontSize: 54,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "burger pinsen.",
                      style: GoogleFonts.montserrat(
                        fontSize: 54,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Mr. Pinsen is a local brand that sells fast food with its main menu is burgers. The burgers here have a wide variety of flavors which are one of the best in the town.',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => new AlertDialog(
                              title: new Text('Sorry'),
                              content:
                                  new Text("There isn't item available now"),
                              actions: <Widget>[
                                new IconButton(
                                    icon: new Icon(Icons.close),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    })
                              ],
                            ));
                  },
                  child: Text(
                    'BUY NOW',
                  ),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      backgroundColor: Colors.amber),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
