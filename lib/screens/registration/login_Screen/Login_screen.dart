import 'package:codes/logic/localData/shared_pref.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_dont_acount.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_logo.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_section_icons.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_section_or.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_txt_forgot.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_txt_login.dart';
import 'package:codes/shared/cus_txtField.dart';
import 'package:codes/shared/custom_button.dart';
import 'package:codes/util/constant.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:codes/util/validate_extension.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  final TextEditingController inputData = TextEditingController();

  final TextEditingController emailData = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

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
            key: loginFormKey,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: media * 0.15),
                  const LogoInLogin(),
                  const SizedBox(height: 38),
                  const TxtLogin(),
                  const SizedBox(height: 33),
                  CustomTxtFiled(
                    hintText: 'Email',
                    message,
                    inputData: emailData,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) => val!.validateEmail(),
                  ),
                  const SizedBox(height: 16),
                  CustomTxtFiled(
                    hintText: 'Password',
                    lock,
                    inputData: inputData,
                    keyboardType: TextInputType.text,
                    validator: (val) => val!.validatePassword(),
                    obscureText: true,
                  ),
                  const SizedBox(height: 18),
                  const LoginTxtForgot(),
                  const SizedBox(height: 17),
                  CustomButtonWidget(
                    title: 'Log in',
                    width: wWieth,
                    isLogin: true,
                    onPressed: () {
                      if (loginFormKey.currentState!.validate()) {
                        SharedPrefController().setLogedin();
                        Navigator.pushReplacementNamed(context, "home_screen");
                        // SharedPrefController()
                        //     .preferences
                        //     .setString('email', emailData.text);
                      }
                    },
                  ),
                  const SizedBox(height: 43),
                  const SectionOR(),
                  const SizedBox(height: 33),
                  const LoginSectionIcons(),
                  SizedBox(height: media * 0.1),
                  LoginDontHaveAccount(
                    SacTxt: 'Don’t have an account?',
                    TxtButton: 'Sign Up',
                    Nav: 'signup_screen',
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
