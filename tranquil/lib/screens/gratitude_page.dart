import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:tranquil/screens/home_page.dart';

class GratitudePage extends StatefulWidget {
  const GratitudePage({super.key});

  @override
  State<GratitudePage> createState() => _GratitudePageState();
}

class _GratitudePageState extends State<GratitudePage> {
  //use this controller to fetch the user input
  final _textController = TextEditingController();

  //store user text input into a variable
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gratitude_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      //Navigator.pop(context);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
                    TextSpan(
                        text: 'Gratitude',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                        children: [
                          TextSpan(
                            text: '\nWhat are you grateful for today?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 2,
                              fontSize: 14,
                            ),
                          ),
                        ]),
                  ),
                  IconButton(
                    onPressed: () {
                      //update the user's post
                      setState(() {
                        userPost = _textController.text;
                      });
                    },
                    icon: const Icon(
                      Icons.add_circle,
                      size: 50,
                      color: Color(0xFFFEAC87),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //display text
              Expanded(
                  child: Container(
                color: Colors.white24,
                child: Center(
                  child: Text(
                    userPost,
                    style: const TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
              //text input
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'I am thankful for...',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      //clear the current user input
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
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
