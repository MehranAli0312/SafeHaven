import 'dart:math';

import 'package:flutter/material.dart';
import 'package:safe_haven/clean/presentation/widgets/common/custom_appbar.dart';
import 'package:safe_haven/clean/presentation/widgets/common/custom_carousel.dart';
import 'package:safe_haven/clean/presentation/widgets/common/uihelper.dart';
import 'package:safe_haven/clean/presentation/widgets/home_widgets/emergency.dart';
import 'package:safe_haven/clean/presentation/widgets/home_widgets/liveSafe/live_safe.dart';
import 'package:safe_haven/clean/presentation/widgets/home_widgets/safehome/SafeHome.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int qIndex = 0;

  @override
  void initState() {
    getRandomQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
                child: Container(
                  color: Colors.grey.shade100,
                ),
              ),
              const SizedBox(height: 5),
              CustomAppbar(
                  quoteIndex: qIndex,
                  onTap: () {
                    getRandomQuote();
                  }),
              const SizedBox(height: 5),
              CustomCarousel(),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 16),
                  UiHelper.CustomText(
                      text: "Emergency",
                      fontWeight: FontWeight.bold,
                      fontSize: 16)
                ],
              ),
              const SizedBox(height: 5),
              const Emergency(),
              const SizedBox(height: 20),
              Row(children: [
                const SizedBox(width: 16),
                UiHelper.CustomText(
                    text: "Explore LiveSafe",
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ]),
              const SizedBox(height: 5),
              const LiveSafe(),
              const SizedBox(height: 5),
              const SafeHome(),
            ],
          ),
        ),
      )),
    );
  }

//   custom methods
  getRandomQuote() {
    Random random = Random();
    setState(() {
      qIndex = random.nextInt(6);
    });
  }
}
