// ignore_for_file: use_build_context_synchronously

import "package:days_30_flutter/utili/class_route.dart";
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_page.png"),
            const SizedBox(height: 20),
            Text(
              "Welcome $name !",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "enter username",
                      labelText: "UserName",
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "enter password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(height: 36),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        isButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoute.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 60,
                      width: isButton ? 60 : 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(isButton ? 8 : 50),
                        color: Colors.blue,
                      ),
                      child: isButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                    ),
                  )
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(fixedSize: Size(200, 60)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoute.homeRoute);
                  //   },
                  //   child: const Text("Login"),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
