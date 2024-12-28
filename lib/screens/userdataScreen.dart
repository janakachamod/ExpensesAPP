import 'package:flutter/material.dart';
import 'package:sevenapp/Widgets/custombutton.dart';
import 'package:sevenapp/constants/colors.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  bool _rememberme = false;

  //formkey

  final _formKey = GlobalKey<FormState>();

  //controllers

  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmPasswordcontroller =
      TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    usernamecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    confirmPasswordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Enter your \nPersonal Details",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your user name';
                          }
                        },
                        controller: usernamecontroller,
                        decoration: InputDecoration(
                          hintText: 'name',
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your email';
                          }
                        },
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter a vlid password';
                          }
                        },
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter the same password';
                          }
                        },
                        controller: confirmPasswordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Remember me for the next Time",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                              activeColor: kMainColor,
                              value: _rememberme,
                              onChanged: (value) {
                                setState(
                                  () {
                                    _rememberme = value!;
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            String username = usernamecontroller.text;
                            String email = emailcontroller.text;
                            String password = passwordcontroller.text;
                            String confirmpassword =
                                confirmPasswordcontroller.text;
                          }
                        },
                        child: const CustomButton(
                            buttonName: "Next", buttonColor: kMainColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
