import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget navItem(String title, int index) {
      return Material(
        child: InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff1D1E3C),
                  fontWeight:
                      selectedIndex == index ? FontWeight.w500 : FontWeight.w300,
                ),
              ),
              Container(
                height: 2,
                width: 66,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: index == selectedIndex
                      ? Color(0xffFE998D)
                      : Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/landing_page.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                // NOTE: NAVIGATION

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem(
                          'Guides',
                          0,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          'Pricing',
                          1,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          'Team',
                          2,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          'Stories',
                          3,
                        ),
                      ],
                    ),
                    Image.asset(
                      'images/btn.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),

                SizedBox(
                  height: 76,
                ),

                // NOTE : CONTENT

                Image.asset(
                  'images/illustration.png',
                  width: 550,
                ),

                // NOTE : FOOTER

                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/icon_scroll.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
