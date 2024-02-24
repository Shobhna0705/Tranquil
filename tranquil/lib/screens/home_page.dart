import 'package:flutter/material.dart';
import 'package:tranquil/screens/appointment_page.dart';
import 'package:tranquil/screens/daily_checkin_page.dart';
import 'package:tranquil/screens/diary_page.dart';
import 'package:tranquil/screens/gratitude_page.dart';
import 'package:tranquil/screens/meditation_page.dart';
import 'package:tranquil/screens/moods_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            //row1
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.waves_outlined),
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'What do you need today?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: TextStyle(
                  fontSize: 45, color: Colors.white, fontFamily: 'Quicksand'),
            ),
            const SizedBox(height: 30),
            const SizedBox(height: 50),
            Expanded(
              child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.2,
                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MeditationPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('images/download.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Text('meditation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black.withOpacity(0.4),
                                        offset: const Offset(0, 2),
                                        blurRadius: 4)
                                  ])),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MoodsPage(),
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/calendar.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text('moodboard',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black.withOpacity(0.4),
                                          offset: const Offset(0, 2),
                                          blurRadius: 4)
                                    ])),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GratitudePage(),
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/gratitude.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text('gratitude',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black.withOpacity(0.4),
                                          offset: const Offset(0, 2),
                                          blurRadius: 4)
                                    ])),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DailyCheckInPage(),
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/daily_check.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text('daily check-in',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black.withOpacity(0.4),
                                          offset: const Offset(0, 4),
                                          blurRadius: 4)
                                    ])),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DiaryPage(),
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/diary.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text('my diary',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black.withOpacity(0.4),
                                          offset: const Offset(0, 2),
                                          blurRadius: 4)
                                    ])),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppointmentPage(),
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/appoint.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text('appointment',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black.withOpacity(0.4),
                                          offset: const Offset(0, 2),
                                          blurRadius: 4)
                                    ])),
                          )),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
