import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_outlined_button_widget.dart';
import 'package:my_family_flutter/core/widgets/custom_textfield_widget.dart';

import '../../../../core/exports/exports.dart';
import '../widgets/password_textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ValidatesHelper validatesHelper = ValidatesHelper();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController phoneController;
  late TextEditingController passwordController;

  @override
  void initState() {
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

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
                TextHelper.login,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFieldWidget(
                      label: TextHelper.phone,
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [Masks.phoneNumber],
                      validate: (value) => validatesHelper.titleValidate(
                          value!, TextHelper.yourPhone),
                    ),
                    const SizedBox(height: 40),
                    PasswordTextFieldWidget(
                      label: TextHelper.password,
                      controller: passwordController,
                      validate: (value) => validatesHelper.titleValidate(
                        value!,
                        TextHelper.password,
                      ),
                    ),
                    const SizedBox(height: 40),
                    CustomOutlinedButtonWidget(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.router.replace(const MainScreenRoute());
                        }
                      },
                      textButton: TextHelper.login.toUpperCase(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }
}
