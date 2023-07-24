import 'package:codes/screens/registration/login_Screen/widget/login_dont_acount.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_logo.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_section_icons.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_section_or.dart';
import 'package:codes/screens/registration/signup_screen/widget/signup_accept_check.dart';
import 'package:codes/screens/registration/signup_screen/widget/signup_txt.dart';
import 'package:codes/shared/cus_txtField.dart';
import 'package:codes/shared/custom_button.dart';
import 'package:codes/util/constant.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:codes/util/validate_extension.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController inputData = TextEditingController();

  TextEditingController nameData = TextEditingController();
  TextEditingController emailData = TextEditingController();
  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Form(
            key: signUpFormKey,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: media * 0.15),
                  const LogoInLogin(),
                  const SizedBox(height: 40),
                  const TxtSignUp(),
                  const SizedBox(height: 25),
                  CustomTxtFiled(
                    hintText: 'Name',
                    profile,
                    inputData: nameData,
                    keyboardType: TextInputType.name,
                    validator: (val) => val!.validateUserName(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 11),
                  CustomTxtFiled(
                    hintText: 'Email',
                    message,
                    inputData: emailData,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) => val!.validateEmail(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 11),
                  CustomTxtFiled(
                    hintText: 'Password',
                    lock,
                    inputData: inputData,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (val) => val!.validatePassword(),
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 16),
                  const AcceptCheck(),
                  const SizedBox(height: 20),
                  CustomButtonWidget(
                    title: 'Sign up',
                    isLogin: true,
                    width: wWieth,
                    onPressed: () {
                      if (signUpFormKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(context, 'login_screen');
                      }
                    },
                  ),
                  const SizedBox(height: 40),
                  const SectionOR(),
                  const SizedBox(height: 24),
                  const LoginSectionIcons(),
                  SizedBox(height: media * 0.05),
                  LoginDontHaveAccount(
                    SacTxt: 'Already have an account? ',
                    TxtButton: 'Log In',
                    Nav: 'login_screen',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
