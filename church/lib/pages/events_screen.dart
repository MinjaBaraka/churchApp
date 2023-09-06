// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/drawer_list_page.dart';
import '../widget/tab_indicator_with_painter.dart';
import '../widget/upcoming_events.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerListPages(),
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          toolbarHeight: 100,
          elevation: 0.0,
          title: const Text(
            "Events",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Gap(10),
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.orangeAccent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              controller: tabController,
              indicator:
                  CircleTabIndicator(color: Colors.orangeAccent, radius: 5),
              tabs: const [
                Tab(
                  text: "Upcoming",
                ),
                Tab(
                  text: "Past",
                ),
              ],
            ),
            const Gap(10),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: [
                    ListView(
                      children: const [
                        UpcomingEvents(
                          dateEvents: "06 May",
                          timeEvents: "12:30 pm",
                          agedEvents: "All",
                          lgHeaderInfoEvents: "Bookstore Spiring open House",
                          paragraphInfoEvents:
                              "If your application needs to display some contents, it's quite common to separate the contents into multiple tabs.",
                        ),
                        Gap(15),
                        UpcomingEvents(
                          dateEvents: "09 May",
                          timeEvents: "04:30 pm",
                          agedEvents: "18-50 age",
                          lgHeaderInfoEvents: "Leadership Summit 2018",
                          paragraphInfoEvents:
                              "In Flutter, creating such a layout can be done easily thanks to TabBar and TabBarView widgets.",
                        ),
                        Gap(15),
                        UpcomingEvents(
                          dateEvents: "10 May",
                          timeEvents: "10:00 pm",
                          agedEvents: "20-above",
                          lgHeaderInfoEvents: "Parents Guide for great life",
                          paragraphInfoEvents:
                              "In Flutter, creating such a layout can be done easily thanks to TabBar and TabBarView widgets.",
                        ),
                      ],
                    ),
                    const Text("Baraka"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
