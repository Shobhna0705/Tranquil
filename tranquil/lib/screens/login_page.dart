import 'package:flutter/material.dart';
import 'package:tranquil/screens/login1.dart';

const Color login_bg = Color(0xff151a2f);
const Color signup_bg = Color(0xff8e7ee7);

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Container(
                  height: 320,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('images/login.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                      borderRadius: BorderRadius.circular(20)))),
          const SizedBox(
            height: 90,
          ),
          const Center(
            child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: 'Tranquil',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500),
                )),
          ),
          const SizedBox(height: 15),
          const Center(
            child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: 'Eventually, all waves settle',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                  ),
                )),
          ),
          const SizedBox(height: 100),
          Center(
            child: ElevatedButton(
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: const Size(200, 50),
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand'),
                  backgroundColor: signup_bg,
                  elevation: 10,
                  shadowColor: Colors.black,
                  shape: const StadiumBorder()),
            ),
          )
        ],
      ),
    ));
  }
}
