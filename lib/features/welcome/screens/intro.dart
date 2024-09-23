import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Eazi Wedding"),
        ),
        backgroundColor: const Color.fromARGB(255, 246, 241, 241),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shadowColor: Colors.white,
                child: Image.asset(
                  "assets/icon.png",
                  height: deviceHeight * 0.4, // Adjust image height
                  width: deviceWidth * 0.5,
                ),
              ),
              const Text(
                "Wedding Made Simple",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text("Attend any wedding from the comfort of your home"),
              const Text("Get direction to wedding venues"),
              const Text("Get events of the day and wedding gallery"),
              const Text("Get events of the day and wedding gallery"),
              const SizedBox(height: 40),
              ElevatedButton(
                  style: ButtonStyle(
                      // padding: Padding(padding: EdgeInsets.all(5)) ,
                      ),
                  onPressed: () {
                    GoRouter.of(context).go("/register");
                  },
                  child: const Text("Continue"))
            ],
          ),
        ));
  }
}
