import 'package:church/auth/login_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: Colors.orangeAccent,
          elevation: 0.0,
          title: const Text("Forgot Password?"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  // Column(
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Container(
                  //           height: 4,
                  //           width: 40,
                  //           decoration: const BoxDecoration(
                  //             color: Colors.orangeAccent,
                  //           ),
                  //         ),
                  //         const Spacer(),
                  //         const Text(
                  //           "Arusha Church",
                  //           textAlign: TextAlign.center,
                  //           style: TextStyle(
                  //             fontSize: 30,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //         const Spacer(),
                  //         Container(
                  //           height: 4,
                  //           width: 40,
                  //           decoration: const BoxDecoration(
                  //             color: Colors.orangeAccent,
                  //           ),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  Center(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "Don't worry, it won't take more than minutes.",
                                style: TextStyle(
                                  color: Colors.orangeAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(50),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          "Enter your registration email address\n",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "We will send you instruction how to \n reset password",
                                      style: TextStyle(
                                        color: Colors.black,
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
                  const Gap(100),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.orangeAccent,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            color: Colors.orangeAccent,
                          )),
                      fillColor: Color.fromARGB(255, 212, 212, 212),
                      filled: true,
                    ),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginAuth(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                      backgroundColor: Colors.orangeAccent,
                      elevation: 0.0,
                    ),
                    child: const Text("Reset Password"),
                  ),
                  const Gap(50),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const Text(
                  //       "Already have an account",
                  //       style: TextStyle(
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //     InkWell(
                  //       onTap: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //               builder: (context) => const LoginAuth(),
                  //             ));
                  //       },
                  //       child: const Text(
                  //         "Sign In",
                  //         style: TextStyle(color: Colors.orangeAccent),
                  //       ),
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
