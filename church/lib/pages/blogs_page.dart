import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/blogs_widget.dart';
import '../widget/drawer_list_page.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerListPages(),
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          toolbarHeight: 100,
          elevation: 0.0,
          title: const Text(
            "Blogs",
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: ListView(
            children: [
              BlogsWidget(
                onTap: () {},
                smText: "Arusha church",
                calendarText: "Sept 20, 2023",
                lgText: "Drawing Near To God Through Sanctification",
                // image: Image.asset(""),
                paragraphInfoBlogs:
                    "If your application needs to display some contents, it's quite common to separate the contents into multiple tabs.",
              ),
              const Gap(10),
              BlogsWidget(
                onTap: () {},
                smText: "Arusha church",
                calendarText: "Jan 30, 2024",
                lgText: "Men, God's Control, and Self-Control",
                // image: Image.asset(""),
                paragraphInfoBlogs:
                    "In Flutter, creating such a layout can be done easily thanks to TabBar and TabBarView widgets.",
              ),
              const Gap(10),
              BlogsWidget(
                onTap: () {},
                smText: "Arusha church",
                calendarText: "Feb 16, 2024",
                lgText: "12 Spurgeon Quotes on Fear and Faith",
                // image: Image.asset(""),
                paragraphInfoBlogs:
                    "If your application needs to display some contents, it's quite common to separate the contents into multiple tabs.",
              ),
              const Gap(10),
              BlogsWidget(
                onTap: () {},
                smText: "Arusha church",
                calendarText: "March 05, 2024",
                lgText: "Drawing Near To God Through Sanctification",
                // image: Image.asset(""),
                paragraphInfoBlogs:
                    "In Flutter, creating such a layout can be done easily thanks to TabBar and TabBarView widgets.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
