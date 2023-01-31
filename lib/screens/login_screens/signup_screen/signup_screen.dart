import 'package:codes/screens/login_screens/signup_screen/widget/signup_accept_check.dart';
import 'package:codes/screens/login_screens/signup_screen/widget/signup_txt.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../shared/cus_txtField.dart';
import '../../../util/constat_assets.dart';
import '../login_Screen/widget/login_cust_button.dart';
import '../login_Screen/widget/login_dont_acount.dart';
import '../login_Screen/widget/login_logo.dart';
import '../login_Screen/widget/login_section_icons.dart';
import '../login_Screen/widget/login_section_or.dart';




class SignUpScreen extends StatefulWidget {
    const SignUpScreen({Key? key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController inputData= TextEditingController() ;
  TextEditingController nameData = TextEditingController();
  TextEditingController emailData = TextEditingController();

   Future setData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('name',  nameData.text);
    pref.setString('email', emailData.text);
    pref.setString('password', inputData.text);
    print(nameData.text);
    print(emailData.text);
    print(inputData.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            const LogoInLogin(),
            const SizedBox(height: 15),
            const TxtSignUp(),
            const SizedBox(height: 33),
            CusTxtFiled(hint: 'Name', profile, inputData: nameData,),
            const SizedBox(height: 10),
            CusTxtFiled(hint: 'Email', message, inputData: emailData,),
            const SizedBox(height: 10),
            CusTxtFiled(hint: 'Password', lock, inputData: inputData,),
            const SizedBox(height: 10),
            const AcceptCheck(),
            const SizedBox(height: 17),
             LoginCustButton(txt: 'Sign up', Nav: 'login_screen', setData: setData(), inputData: inputData,),
            const SizedBox(height: 30),
            const SectionOR(),
            const SizedBox(height: 29),
            const LoginSectionIcons(),
            const SizedBox(height: 27),
            LoginDontHaveAccount(SacTxt: 'Already have an account? ', TxtButton: 'Log In', Nav: 'login_screen',),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}





