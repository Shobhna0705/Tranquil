import 'package:flutter/material.dart';
import 'package:tranquil/screens/home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text('Email',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Quicksand')),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        height: 60,
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
            fontFamily: 'Quicksand',
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email, color: Color(0xff151a2f)),
              hintText: 'user@email.com',
              hintStyle:
                  TextStyle(color: Colors.black38, fontFamily: 'Quicksand')),
        ),
      ),
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text('Password',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Quicksand')),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        height: 60,
        child: const TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87,
            fontFamily: 'Quicksand',
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock, color: Color(0xff151a2f)),
              hintText: 'usgoqh:989g1#',
              hintStyle:
                  TextStyle(color: Colors.black38, fontFamily: 'Quicksand')),
        ),
      ),
    ],
  );
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff151a2f),
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 120,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: 'Welcome!',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Quicksand'),
                  ),
                ),
                const SizedBox(height: 10),
                const Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: 'Login to your account',
                    style: TextStyle(
                        fontSize: 20,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Quicksand'),
                  ),
                ),
                const SizedBox(height: 80),
                buildEmail(),
                const SizedBox(height: 50),
                buildPassword(),
                const SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10.0),
                        fixedSize: const Size(200, 50),
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand'),
                        backgroundColor: const Color(0xff8e7ee7),
                        elevation: 10,
                        shadowColor: Colors.black,
                        shape: const StadiumBorder()),
                    child: const Text('LOGIN'),
                  ),
                )
              ],
            )),
      )
    ]));
  }
}
