import 'package:codes/screens/registration/login_Screen/widget/login_cust_button.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_dont_acount.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_logo.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_section_icons.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_section_or.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_txt_forgot.dart';
import 'package:codes/screens/registration/login_Screen/widget/login_txt_login.dart';
import 'package:codes/shared/cus_txtField.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  final TextEditingController inputData = TextEditingController();

  final TextEditingController emailData = TextEditingController();

  Future setData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('email', emailData.text);
    pref.setString('password', inputData.text);
    debugPrint(inputData.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              const LogoInLogin(),
              const SizedBox(height: 38),
              const TxtLogin(),
              const SizedBox(height: 33),
              CustomTxtFiled(
                hint: 'Email',
                message,
                inputData: emailData,
              ),
              const SizedBox(height: 16),
              CustomTxtFiled(
                hint: 'Password',
                lock,
                inputData: inputData,
              ),
              const SizedBox(height: 18),
              const LoginTxtForgot(),
              const SizedBox(height: 17),
              LoginCustButton(
                txt: 'Log in',
                Nav: 'drawer_screen',
                setData: setData(),
                inputData: inputData,
              ),
              const SizedBox(height: 43),
              const SectionOR(),
              const SizedBox(height: 33),
              const LoginSectionIcons(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              LoginDontHaveAccount(
                SacTxt: 'Don’t have an account?',
                TxtButton: 'Sign Up',
                Nav: 'signup_screen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
