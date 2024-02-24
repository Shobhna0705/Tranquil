import 'package:flutter/material.dart';
import 'package:tranquil/screens/home_page.dart';
import 'package:tranquil/screens/stay_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class CardItem {
  final String imagePath;
  final String title;
  final String subtitle;

  const CardItem({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
}

class MeditationPage extends StatefulWidget {
  const MeditationPage({super.key});

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  List<CardItem> items = [
    const CardItem(
      imagePath: 'images/bg2.jpeg',
      title: 'Stay',
      subtitle: 'Wherever you are, I know you always stay',
    ),
    const CardItem(
      imagePath: 'images/bg3.jpeg',
      title: 'So Far Away',
      subtitle: 'Dream, you will fully bloom after all the hardships',
    ),
    const CardItem(
      imagePath: 'images/bg4.jpeg',
      title: 'Euphoria',
      subtitle: 'Take my hand now',
    ),
    const CardItem(
      imagePath: 'images/bg7.jpeg',
      title: 'Make it Right',
      subtitle: 'I could make it better, I could hold you tighter',
    ),
    const CardItem(
      imagePath: 'images/bg8.jpeg',
      title: 'Mikrokosmos',
      subtitle: 'In our own rooms, in our own stars',
    ),
    const CardItem(
      imagePath: 'images/bg9.jpeg',
      title: 'Light',
      subtitle: 'In the darkness, you are light',
    ),
    const CardItem(
      imagePath: 'images/bg10.jpeg',
      title: 'Yet To Come',
      subtitle: 'My best is what comes next',
    ),
    const CardItem(
      imagePath: 'images/bg12.jpeg',
      title: 'Blue & Grey',
      subtitle: 'The end of a tiring day',
    ),
    const CardItem(
      imagePath: 'images/bg13.jpeg',
      title: 'My You',
      subtitle: 'All these lights are colored in by you',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Row(
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
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text.rich(
              TextSpan(
                  text: 'Hey Sailor!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                  children: [
                    TextSpan(
                        text:
                            '\nOne step at a time and eventually, all those waves will settle',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 2,
                          fontSize: 14,
                        ))
                  ]),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 370,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF353B53),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                    color: Color(0xFF636A8A),
                  ),
                  hintStyle: const TextStyle(color: Color(0xFF636A8A)),
                  hintText: 'Find something relaxing..',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF353B53)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Recommended',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 350,
              child: ListView.separated(
                padding: const EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                separatorBuilder: (context, _) => const SizedBox(width: 12),
                itemBuilder: (context, index) => buildCard(item: items[index]),
              ),
            ),
          ],
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

  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
        width: 180,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: Ink.image(
                      image: AssetImage(item.imagePath),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StayPage(
                              item: item,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              item.title,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
}
