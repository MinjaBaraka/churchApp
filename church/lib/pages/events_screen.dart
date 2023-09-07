// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../model/upcoming_events.dart';
import '../widget/divider_container.dart';
import '../widget/drawer_list_page.dart';
import '../widget/tab_indicator_with_painter.dart';

class EventsScreen extends StatefulWidget {
  final List<EventsUpcoming> eventsUpcoming;
  const EventsScreen({Key? key, required this.eventsUpcoming})
      : super(key: key);

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 0.2,
                      spreadRadius: 0.2,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Builder(
                      builder: (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(
                            Icons.dashboard_customize,
                            color: Colors.orangeAccent,
                          )),
                    ),
                    const Gap(10),
                    const Text(
                      "Events",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
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
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: [
                    ListView.builder(
                      itemCount: EventsUpcoming.upcomingEvents.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 0.2,
                                  spreadRadius: 0.2,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        color: Colors.orangeAccent,
                                      ),
                                      const Gap(10),
                                      Text(
                                        EventsUpcoming
                                            .upcomingEvents[index].dateEvents,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Gap(20),
                                      const Icon(
                                        Icons.timer_outlined,
                                        color: Colors.orangeAccent,
                                      ),
                                      const Gap(10),
                                      Text(
                                        EventsUpcoming
                                            .upcomingEvents[index].timeEvents,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Gap(20),
                                      const Icon(
                                        Icons.person,
                                        color: Colors.orangeAccent,
                                      ),
                                      const Gap(5),
                                      Expanded(
                                        child: Text(
                                          EventsUpcoming
                                              .upcomingEvents[index].agedEvents,
                                          style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Gap(10),
                                  const DividerContainer(
                                    color: Colors.orangeAccent,
                                    height: 3.5,
                                  ),
                                  const Gap(20),
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Events Info\n",
                                              style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.4),
                                                fontWeight: FontWeight.bold,
                                                // fontSize: 20,
                                              ),
                                            ),
                                            TextSpan(
                                              text: EventsUpcoming
                                                  .upcomingEvents[index]
                                                  .lgHeaderInfoEvents,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Gap(8),
                                  Text(
                                    EventsUpcoming.upcomingEvents[index]
                                        .paragraphInfoEvents,
                                    textAlign: TextAlign.justify,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const Text("Baraka"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
