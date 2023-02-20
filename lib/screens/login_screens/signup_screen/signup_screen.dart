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
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              SizedBox(height: MediaQuery.of(context).size.height*0.15),
              const LogoInLogin(),
               SizedBox(height: MediaQuery.of(context).size.height*0.02),
              const TxtSignUp(),
              SizedBox(height: MediaQuery.of(context).size.height*0.04),
              CustomeTxtFiled(hint: 'Name', profile, inputData: nameData,),
              SizedBox(height: MediaQuery.of(context).size.height*0.01),
              CustomeTxtFiled(hint: 'Email', message, inputData: emailData,),
              SizedBox(height: MediaQuery.of(context).size.height*0.01),
              CustomeTxtFiled(hint: 'Password', lock, inputData: inputData,),
              const AcceptCheck(),
              SizedBox(height: MediaQuery.of(context).size.height*0.03),
               LoginCustButton(txt: 'Sign up', Nav: 'login_screen', setData: setData(), inputData: inputData,),
              SizedBox(height: MediaQuery.of(context).size.height*0.02),
              const SectionOR(),
              SizedBox(height: MediaQuery.of(context).size.height*0.02),
              const LoginSectionIcons(),
              SizedBox(height: MediaQuery.of(context).size.height*0.05),
              LoginDontHaveAccount(SacTxt: 'Already have an account? ', TxtButton: 'Log In', Nav: 'login_screen',),
              SizedBox(height: MediaQuery.of(context).size.height*0.04),
            ],
          ),
        ),
      ),
    );
  }
}





