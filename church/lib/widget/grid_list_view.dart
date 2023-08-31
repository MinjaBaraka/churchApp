import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GridListView extends StatelessWidget {
  final IconData icon;
  final String lgName;
  final String smName;
  const GridListView({
    super.key,
    required this.icon,
    required this.lgName,
    required this.smName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 185,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.center,
          colors: [
            Colors.black38,
            Colors.grey,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.orangeAccent,
                ),
                const Gap(20),
                Column(
                  children: [
                    RichText(
                      // textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: lgName,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: smName,
                            // style: TextStyle(
                            //   overflow: TextOverflow.clip,
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
