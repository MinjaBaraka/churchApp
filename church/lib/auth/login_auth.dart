import 'package:church/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'forgot_password_auth.dart';
import 'register_auth.dart';

class LoginAuth extends StatefulWidget {
  const LoginAuth({Key? key}) : super(key: key);

  @override
  State<LoginAuth> createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/splash/1.png",
                          height: 300,
                          width: 300,
                          // fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 4,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "Arusha Church",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 4,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Gap(25),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Email Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      fillColor: Color.fromARGB(255, 212, 212, 212),
                      filled: true,
                    ),
                  ),
                  const Gap(10),
                  Stack(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          fillColor: Color.fromARGB(255, 212, 212, 212),
                          filled: true,
                        ),
                      ),
                      Positioned(
                        right: 25,
                        top: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgotPassword(),
                                ));
                          },
                          child: const Text(
                            "Forgot",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                      backgroundColor: Colors.orangeAccent,
                      elevation: 0.0,
                    ),
                    child: const Text("Sign In"),
                  ),
                  const Gap(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "New user?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterAuth(),
                              ));
                        },
                        child: const Text(
                          "Register Now",
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
