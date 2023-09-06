import 'package:church/model/welcome_model.dart';
import 'package:church/pages/personal_account.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomePage extends StatelessWidget {
  final List<WelcomeModel> welcomeModel;
  const WelcomePage({Key? key, required this.welcomeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Arusha Church",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  IconButton(
                    splashColor: Colors.orangeAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PesornalAccount(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.person,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
              const Gap(50),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Thought of the Day",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  const Text(
                    "At the end of the day,Before close your eyes,be content with what you've done and be proudof who you are",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Gap(40),
              Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 185 / 100,
                    ),
                    itemCount: WelcomeModel.welcomePage.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: WelcomeModel.welcomePage[index].onTap,
                        child: Container(
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
                                      WelcomeModel.welcomePage[index].icon,
                                      color: Colors.orangeAccent,
                                    ),
                                    const Gap(20),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          RichText(
                                            // textAlign: TextAlign.center,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: WelcomeModel
                                                      .welcomePage[index]
                                                      .lgName,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: WelcomeModel
                                                      .welcomePage[index]
                                                      .smName,
                                                  // style: TextStyle(
                                                  //   overflow: TextOverflow.clip,
                                                  // ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
