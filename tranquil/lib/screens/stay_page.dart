import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tranquil/screens/meditation_page.dart';

class StayPage extends StatelessWidget {
  final CardItem item;

  const StayPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(item.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  )
                ],
              ),
              const SizedBox(height: 270),
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                item.subtitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 120),
              IconButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('music1.mp3');
                },
                icon: const Icon(Icons.play_circle_fill_rounded, size: 60),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
