import 'package:church/pages/blogs_page.dart';
import 'package:church/pages/events_screen.dart';
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
              Column(
                children: [
                  Row(
                    children: [
                      GridListView(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EventsScreen(),
                            ),
                          );
                        },
                        icon: Icons.event,
                        lgName: "Event\n",
                        smName: "List of Event",
                      ),
                      const Gap(20),
                      GridListView(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BlogsPage(),
                            ),
                          );
                        },
                        icon: Icons.list_alt,
                        lgName: "Blogs\n",
                        smName: "List of Blogs",
                      ),
                    ],
                  ),
                  const Gap(20),
                  const Row(
                    children: [
                      GridListView(
                        icon: Icons.hail_outlined,
                        lgName: "Prayer\n",
                        smName: "List of Event",
                      ),
                      Gap(20),
                      GridListView(
                        icon: Icons.book_outlined,
                        lgName: "Books\n",
                        smName: "List of Books",
                      ),
                    ],
                  ),
                  const Gap(20),
                  const Row(
                    children: [
                      GridListView(
                        icon: Icons.collections,
                        lgName: "Gallery\n",
                        smName: "List of Gallery",
                      ),
                      Gap(20),
                      GridListView(
                        icon: Icons.search,
                        lgName: "Find a Church\n",
                        smName: "Find the location of church",
                      ),
                    ],
                  ),
                  const Gap(20),
                  const Row(
                    children: [
                      GridListView(
                        icon: Icons.event,
                        lgName: "About\n",
                        smName: "About the church",
                      ),
                      Gap(20),
                      GridListView(
                        icon: Icons.email,
                        lgName: "Contact\n",
                        smName: "Manager a church",
                      ),
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
