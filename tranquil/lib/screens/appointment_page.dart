import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: const AssetImage('images/booking.png'),
                          fit: BoxFit.fitWidth,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.darken)),
                      borderRadius: BorderRadius.circular(10),
                    ))),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text.rich(
                      textAlign: TextAlign.left,
                      TextSpan(
                        text: '\tAppointments',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500),
                      )),
                ]),
            const SizedBox(height: 40),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                Widget>[
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    fixedSize: const Size(400, 40),
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand'),
                    backgroundColor: Color(0xff8e7ee7),
                    elevation: 10,
                    shadowColor: Colors.black,
                    shape: const BeveledRectangleBorder()),
                child: const Text('Popular specialists'),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    fixedSize: const Size(300, 40),
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand'),
                    backgroundColor: const Color.fromARGB(136, 148, 133, 231),
                    //elevation: 10,
                    //shadowColor: Colors.black,
                    shape: const BeveledRectangleBorder()),
                child: const Text('Anna Marie'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    fixedSize: const Size(300, 40),
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand'),
                    backgroundColor: const Color.fromARGB(136, 148, 133, 231),
                    //elevation: 10,
                    //shadowColor: Colors.black,
                    shape: const BeveledRectangleBorder()),
                child: const Text('Claire Kessler'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    fixedSize: const Size(300, 40),
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand'),
                    backgroundColor: const Color.fromARGB(136, 148, 133, 231),
                    //elevation: 10,
                    //shadowColor: Colors.black,
                    shape: const BeveledRectangleBorder()),
                child: const Text('Ashton Taylor'),
              ),
            ])
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: const Color(0xFF353B53),
        onItemSelected: (index) {},
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
