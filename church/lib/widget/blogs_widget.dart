import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BlogsWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String smText;
  final String lgText;
  final String paragraphInfoBlogs;
  final String calendarText;
  const BlogsWidget({
    super.key,
    this.onTap,
    required this.smText,
    required this.lgText,
    required this.paragraphInfoBlogs,
    required this.calendarText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.orangeAccent,
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
                image: const DecorationImage(
                  image: AssetImage("assets/blogs/1.jpg"),
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          smText,
                          style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          calendarText,
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
                          lgText,
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
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            paragraphInfoBlogs,
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
    );
  }
}
