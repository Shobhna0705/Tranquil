import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tranquil/widgets/moods.dart';

class MoodsPage extends StatefulWidget {
  const MoodsPage({super.key});

  @override
  State<MoodsPage> createState() => _MoodsPageState();
}

class _MoodsPageState extends State<MoodsPage> {
  //keeps track of the current page that we're on
  PageController _controller = PageController();

  //keep track of the last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = index == 7;
              });
            },
            children: [
              moods(
                  bgimage: 'images/yellow.png',
                  subtitle: 'Happy',
                  image: 'images/happy.png'),
              moods(
                  bgimage: 'images/pink.png',
                  subtitle: 'Good',
                  image: 'images/smile.png'),
              moods(
                  bgimage: 'images/green.png',
                  subtitle: 'IDK',
                  image: 'images/idk.png'),
              moods(
                  bgimage: 'images/blue.png',
                  subtitle: 'Sad',
                  image: 'images/sad.png'),
              moods(
                  bgimage: 'images/purple.png',
                  subtitle: 'Anxious',
                  image: 'images/anxious.png'),
              moods(
                  bgimage: 'images/red.png',
                  subtitle: 'Angry',
                  image: 'images/angry.png'),
              moods(
                  bgimage: 'images/dirty.png',
                  subtitle: 'Awful',
                  image: 'images/awful.png'),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 7,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.white,
                    dotColor: Colors.white12,
                  ),
                  onDotClicked: (index) => _controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
