import 'package:codes/screens/login_screens/login_Screen/widget/login_cust_button.dart';
import 'package:codes/screens/login_screens/login_Screen/widget/login_dont_acount.dart';
import 'package:codes/screens/login_screens/login_Screen/widget/login_logo.dart';
import 'package:codes/screens/login_screens/login_Screen/widget/login_section_icons.dart';
import 'package:codes/screens/login_screens/login_Screen/widget/login_section_or.dart';
import 'package:codes/screens/login_screens/login_Screen/widget/login_txt_forgot.dart';
import 'package:codes/screens/login_screens/login_Screen/widget/login_txt_login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../shared/cus_txtField.dart';
import '../../../util/constat_assets.dart';

class LogInScreen extends StatelessWidget {
   LogInScreen({Key? key}) : super(key: key);
  TextEditingController inputData= TextEditingController() ;
   TextEditingController emailData = TextEditingController();

 Future setData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('email', emailData.text);
    pref.setString('password', inputData.text);
    print(inputData.text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const LogoInLogin(),
            const SizedBox(height: 15),
            const TxtLogin(),
            const SizedBox(height: 33),
            CusTxtFiled(hint: 'Email', message, inputData: emailData,),
            const SizedBox(height: 16),
            CusTxtFiled(hint: 'Password', lock, inputData: inputData,),
            const LoginTxtForgot(),
            const SizedBox(height: 17),
            LoginCustButton(txt: 'Log in', Nav: 'drawer_screen', setData: setData(), inputData: inputData,),
            const SizedBox(height: 43),
            const SectionOR(),
            const SizedBox(height: 29),
            const LoginSectionIcons(),
            const SizedBox(height: 40),
             LoginDontHaveAccount(SacTxt: 'Don’t have an account?', TxtButton: 'Sign Up', Nav: 'signup_screen',),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}







