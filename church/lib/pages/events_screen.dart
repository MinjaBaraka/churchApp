// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/divider_container.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
          toolbarHeight: 100,
          elevation: 0.0,
          title: const Text("Events"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
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
                  controller: tabController,
                  children: const [
                    Column(
                      children: [
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
                          dateEvents: "06 May",
                          timeEvents: "04:30 pm",
                          agedEvents: "18-50 age",
                          lgHeaderInfoEvents: "Leadership Summit 2018",
                          paragraphInfoEvents:
                              "In Flutter, creating such a layout can be done easily thanks to TabBar and TabBarView widgets.",
                        ),
                      ],
                    ),
                    Text("Baraka"),
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

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;

    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}
