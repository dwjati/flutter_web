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
    Widget navItem({String? title, int? index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index!;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title!,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300,
                  color: Color(0xff1D1E3C)),
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
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/bcgn.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 100.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 40,
                        width: 72,
                      ),
                      Row(
                        children: [
                          navItem(
                            title: 'Guides',
                            index: 0,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Pricing',
                            index: 1,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Team',
                            index: 2,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Stories',
                            index: 3,
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/btn.png',
                        width: 163,
                        height: 53,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 76,
                  ),
                  Image.asset(
                    'assets/illustration.png',
                    width: 550,
                  ),
                  SizedBox(
                    height: 84,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Icon.png',
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Scroll to Learn More',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.