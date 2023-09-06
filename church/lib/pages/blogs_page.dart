import 'package:church/model/blogs_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widget/drawer_list_page.dart';

class BlogsPage extends StatelessWidget {
  final List<BlogsList> blogsList;
  const BlogsPage({Key? key, required this.blogsList}) : super(key: key);

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
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: BlogsList.blogsList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: blogsList[index].onTap,
                splashColor: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: 200,
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
                        Container(
                          margin: const EdgeInsets.only(right: 15, left: 5),
                          height: 160,
                          width: 135,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(
                                  BlogsList.blogsList[index].imageBlog),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // const Gap(30),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 230,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      BlogsList.blogsList[index].smText,
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      BlogsList.blogsList[index].calendarText,
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      BlogsList.blogsList[index].lgText,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        BlogsList.blogsList[index]
                                            .paragraphInfoBlogs,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}