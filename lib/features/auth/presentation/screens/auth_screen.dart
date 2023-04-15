import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart';
import 'package:my_family_flutter/core/widgets/custom_outlined_button_widget.dart';
import 'package:my_family_flutter/core/widgets/custom_textfield_widget.dart';
import 'package:my_family_flutter/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:my_family_flutter/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/exports/exports.dart';
import '../../../../core/widgets/custom_snackbar.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/password_textfield_widget.dart';

class AuthScreen extends StatefulWidget {
  final void Function(bool isLoggedIn)? onLoginResult;

  const AuthScreen({super.key, this.onLoginResult});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
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
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  TextHelper.login,
                  style: TextStyleHelper.f25w700,
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
                        validate: (value) => ValidatesHelper.phoneNumber(
                          value!,
                          TextHelper.yourPhone,
                        ),
                      ),
                      const SizedBox(height: 40),
                      PasswordTextFieldWidget(
                        label: TextHelper.password,
                        controller: passwordController,
                        validate: (value) => ValidatesHelper.titleValidate(
                          value!,
                          TextHelper.password.toLowerCase(),
                        ),
                      ),
                      const SizedBox(height: 40),
                      BlocConsumer<AuthBloc, AuthState>(
                        builder: (context, state) {
                          if (state.loading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return CustomOutlinedButtonWidget(
                            textButton: TextHelper.login.toUpperCase(),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(
                                      LogIn(
                                        phoneNumber: phoneController.text
                                            .replaceAll(RegExp(r'\D'), "")
                                            .replaceFirst(r'7', '8'),
                                        password: passwordController.text,
                                      ),
                                    );
                              }
                            },
                          );
                        },
                        listener: (context, state) {
                          if (state.authenticated) {
                            widget.onLoginResult?.call(true);
                            context.router.replace(
                              const NavBarRouterRoute(),
                            );
                          }
                          if (state.isFailed) {
                            showCustomSnackBar(context, state.message);
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
