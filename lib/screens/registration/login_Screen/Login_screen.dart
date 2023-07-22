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
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const TxtLogin(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              CustomeTxtFiled(
                hint: 'Email',
                message,
                inputData: emailData,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              CustomeTxtFiled(
                hint: 'Password',
                lock,
                inputData: inputData,
              ),
              const LoginTxtForgot(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              LoginCustButton(
                txt: 'Log in',
                Nav: 'drawer_screen',
                setData: setData(),
                inputData: inputData,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const SectionOR(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const LoginSectionIcons(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              LoginDontHaveAccount(
                SacTxt: 'Don’t have an account?',
                TxtButton: 'Sign Up',
                Nav: 'signup_screen',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
