import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/constants/masks.dart';
import 'package:my_family_flutter/feature/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final codeController = TextEditingController();

  String message = "Sending SMS code...";
  bool nextStep = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 50),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputField(
                      labelText: "Phone number",
                      inputFormatters: [Masks.phoneNumber],
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length != 18) {
                          return 'Phone number is not correct';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    !nextStep
                        ? InputField(
                            labelText: "Password",
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password is not correct.";
                              }
                              return null;
                            },
                          )
                        : InputField(
                            controller: codeController,
                            labelText: "Code",
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length != 4) {
                                return "Code is not correct.";
                              }
                              return null;
                            },
                          ),
                    const SizedBox(height: 40),
                    OutlinedButton(
                      onPressed: () {
                        if (!nextStep && _formKey.currentState!.validate()) {
                          setState(() => nextStep = !nextStep);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(message)),
                          );
                        } else if (nextStep) {
                          context.router.replaceNamed('mainScreen');
                        }
                      },
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                          const Size(140, 40),
                        ),
                      ),
                      child: Text(
                        !nextStep ? "Next" : "Log in",
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
