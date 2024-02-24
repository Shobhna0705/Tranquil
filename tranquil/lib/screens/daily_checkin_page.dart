import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class DailyCheckInPage extends StatefulWidget {
  const DailyCheckInPage({super.key});

  @override
  State<DailyCheckInPage> createState() => _DailyCheckInPageState();
}

class _DailyCheckInPageState extends State<DailyCheckInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
          ),
          Container(
            height: 380,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/daily_checkin_bg.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text: 'Daily\nCheck-in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: '\nHow are you doing today?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 2,
                          fontSize: 15,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: const Size(160, 50),
                  shape: const StadiumBorder(),
                  backgroundColor: Color(0xFFE4C1BF),
                  foregroundColor: Colors.white),
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Color(0xFF93B4D3),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    context: context,
                    builder: ((context) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.close_rounded),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                          const Center(
                            child: ListTile(
                              title: Text(
                                'How are you feeling today?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            // style: ButtonStyle(
                            //   shape: MaterialStateProperty.all<
                            //           RoundedRectangleBorder>(
                            //       RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(18.0),
                            //   )),
                            //   overlayColor:
                            //       getColor(Color(0xFF181E33), Colors.white),
                            // ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10.0),
                                fixedSize: const Size(350, 50),
                                shape: const StadiumBorder(),
                                backgroundColor: Color(0xFF181E33),
                                foregroundColor: Colors.white),
                            onPressed: () {},
                            child: const Text(
                              'Absolutely awesome',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10.0),
                                fixedSize: const Size(350, 50),
                                shape: const StadiumBorder(),
                                backgroundColor: Color(0xFF181E33),
                                foregroundColor: Colors.white),
                            onPressed: () {},
                            child: const Text(
                              'Pretty good',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10.0),
                                fixedSize: const Size(350, 50),
                                shape: const StadiumBorder(),
                                backgroundColor: Color(0xFF181E33),
                                foregroundColor: Colors.white),
                            onPressed: () {},
                            child: const Text(
                              'Totally fine',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10.0),
                                fixedSize: const Size(350, 50),
                                shape: const StadiumBorder(),
                                backgroundColor: Color(0xFF181E33),
                                foregroundColor: Colors.white),
                            onPressed: () {},
                            child: const Text(
                              'Somewhat bad',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10.0),
                                fixedSize: const Size(350, 50),
                                shape: const StadiumBorder(),
                                backgroundColor: Color(0xFF181E33),
                                foregroundColor: Colors.white),
                            onPressed: () {},
                            child: const Text(
                              'Really terrible',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      );
                    }));
              },
              child: const Text(' start ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: const Color(0xFF353B53),
        onItemSelected: (index) {
          setState(() {});
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: const Text('Home'),
              icon: const Icon(Icons.home),
              activeColor: Colors.white),
          BottomNavyBarItem(
              title: const Text('Gratitude'), icon: const Icon(Icons.favorite)),
          BottomNavyBarItem(
              title: const Text('Calendar'),
              icon: const Icon(Icons.calendar_month_outlined)),
        ],
      ),
    );
  }
}

//   MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
//     final getColor = (Set<MaterialState> states) {
//       if (states.contains(MaterialState.pressed)) {
//         return colorPressed;
//       } else {
//         return color;
//       }
//     };
//     return MaterialStateProperty.resolveWith(getColor);
//   }
// }
