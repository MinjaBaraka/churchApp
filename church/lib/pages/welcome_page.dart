import 'package:church/pages/personal_account.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/grid_list_view.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void displayDialog() {
    Dialog(
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Arusha Church",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PesornalAccount(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.person,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
              const Gap(50),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Thought of the Day",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  const Text(
                    "At the end of the day,Before close your eyes,be content with what you've done and be proudof who you are",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Gap(40),
              const Column(
                children: [
                  Row(
                    children: [
                      GridListView(),
                      Gap(20),
                      GridListView(),
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      GridListView(),
                      Gap(20),
                      GridListView(),
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      GridListView(),
                      Gap(20),
                      GridListView(),
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      GridListView(),
                      Gap(20),
                      GridListView(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
