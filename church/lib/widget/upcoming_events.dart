import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'divider_container.dart';

class UpcomingEvents extends StatelessWidget {
  final String dateEvents;
  final String timeEvents;
  final String agedEvents;
  final String lgHeaderInfoEvents;
  final String paragraphInfoEvents;
  const UpcomingEvents({
    super.key,
    required this.dateEvents,
    required this.timeEvents,
    required this.agedEvents,
    required this.lgHeaderInfoEvents,
    required this.paragraphInfoEvents,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  dateEvents,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(25),
                const Icon(
                  Icons.timer_outlined,
                  color: Colors.orangeAccent,
                ),
                const Gap(10),
                Text(
                  timeEvents,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(25),
                const Icon(
                  Icons.person,
                  color: Colors.orangeAccent,
                ),
                const Gap(5),
                Text(
                  agedEvents,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
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
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.bold,
                          // fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: lgHeaderInfoEvents,
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
              paragraphInfoEvents,
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
