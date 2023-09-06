import 'package:church/model/upcoming_events.dart';
import 'package:church/pages/events_screen.dart';
import 'package:church/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../model/blogs_list.dart';
import '../pages/blogs_page.dart';
import 'drawer_terms_diver.dart';

class DrawerListPages extends StatelessWidget {
  const DrawerListPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    child: Image.asset(
                      "assets/splash/1.png",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Arusha Church",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "arushachurch@gmail.com",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            DrawerListTerms(
              drawerText: "Back to Home",
              colorText: Colors.orangeAccent,
              icon: Icons.home,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomePage(welcomeModel: []),
                    ));
              },
            ),
            const Gap(8),
            const ContainerDividerWithPadding(),
            const Gap(8),
            DrawerListTerms(
              drawerText: "Events",
              icon: Icons.event,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventsScreen(
                          eventsUpcoming: EventsUpcoming.upcomingEvents),
                    ));
              },
            ),
            const Gap(8),
            const ContainerDividerWithPadding(),
            const Gap(8),
            DrawerListTerms(
              drawerText: "Prayer",
              icon: Icons.hail_outlined,
              onTap: () {},
            ),
            const Gap(8),
            const ContainerDividerWithPadding(),
            const Gap(8),
            DrawerListTerms(
              drawerText: "Gallery",
              icon: Icons.collections,
              onTap: () {},
            ),
            const Gap(8),
            const ContainerDividerWithPadding(),
            const Gap(8),
            DrawerListTerms(
              drawerText: "Blogs",
              icon: Icons.list_alt,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BlogsPage(blogsList: BlogsList.blogsList),
                  ),
                );
              },
            ),
            const Gap(8),
            const ContainerDividerWithPadding(),
            const Gap(8),
            DrawerListTerms(
              drawerText: "Books",
              icon: Icons.book_outlined,
              onTap: () {},
            ),
            const Gap(8),
            const ContainerDividerWithPadding(),
            const Gap(8),
            DrawerListTerms(
              drawerText: "Find Church",
              icon: Icons.search,
              onTap: () {},
            ),
            const Gap(8),
            const ContainerDividerWithPadding(),
            const Gap(8),
            DrawerListTerms(
              drawerText: "Contact",
              icon: Icons.email,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
