import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WelcomeModel extends Equatable {
  final IconData icon;
  final String lgName;
  final String smName;
  final VoidCallback? onTap;

  const WelcomeModel({
    required this.icon,
    required this.lgName,
    required this.smName,
    this.onTap,
  });

  static List<WelcomeModel> welcomePage = [
    WelcomeModel(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const EventsScreen(),
        //   ),
        // );
      },
      icon: Icons.event,
      lgName: "Event\n",
      smName: "List of Event",
    ),
    WelcomeModel(
      onTap: () {},
      icon: Icons.list_alt,
      lgName: "Blogs\n",
      smName: "List of Blogs",
    ),
    const WelcomeModel(
      icon: Icons.hail_outlined,
      lgName: "Prayer\n",
      smName: "List of Event",
    ),
    const WelcomeModel(
      icon: Icons.book_outlined,
      lgName: "Books\n",
      smName: "List of Books",
    ),
    const WelcomeModel(
      icon: Icons.collections,
      lgName: "Gallery\n",
      smName: "List of Gallery",
    ),
    const WelcomeModel(
      icon: Icons.search,
      lgName: "Find a Church\n",
      smName: "Find the location of church",
    ),
    const WelcomeModel(
      icon: Icons.event,
      lgName: "About\n",
      smName: "About the church",
    ),
    const WelcomeModel(
      icon: Icons.email,
      lgName: "Contact\n",
      smName: "Manager a church",
    ),
  ];

  @override
  List<Object?> get props => [
        icon,
        lgName,
        smName,
        onTap,
      ];
}
