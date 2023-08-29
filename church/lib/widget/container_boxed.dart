import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'details_container.dart';

class ContainerBoxed extends StatelessWidget {
  const ContainerBoxed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Update Info",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "change password",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            Gap(35),
            DetailsContainer(
              icon: Icons.person,
              smText: "User Name\n",
              lgText: "Baraka G. Minja",
            ),
            Gap(25),
            DetailsContainer(
              icon: Icons.email,
              smText: "Email Address\n",
              lgText: "Arusha, Tanzania",
            ),
            Gap(25),
            DetailsContainer(
              icon: Icons.phone,
              smText: "Phone Number\n",
              lgText: "+255 622 660 722",
            ),
          ],
        ),
      ),
    );
  }
}
