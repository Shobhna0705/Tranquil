import 'package:flutter/material.dart';

Widget moods({
  required String bgimage,
  required String subtitle,
  required String image,
}) =>
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgimage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
              )
            ],
          ),
          const SizedBox(height: 30),
          const Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: '  How are you feeling today?  ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          const SizedBox(height: 90),
          Center(
            child: Text(
              subtitle,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 80),
          Center(
            child: Image.asset(image),
          ),
          const SizedBox(height: 80),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white),
              onPressed: () {},
              child: const Text(' Select ', style: TextStyle(fontSize: 30)),
            ),
          )
        ],
      ),
    );
