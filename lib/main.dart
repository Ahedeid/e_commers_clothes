import 'package:codes/logic/localData/shared_pref.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/home_see_all.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/checkout_Screen/checkout_screen.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/checkout_Screen/payment/payment_screen.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/det_my_cart.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/see_all_det_screen.dart';
import 'package:codes/screens/home_screen/home_screen.dart';
import 'package:codes/screens/launch_screens/launch_screen.dart';
import 'package:codes/screens/profile/PrivacyScreen.dart';
import 'package:codes/screens/profile/aboutUsScreen.dart';
import 'package:codes/screens/registration/login_Screen/Login_screen.dart';
import 'package:codes/screens/registration/signup_screen/signup_screen.dart';
import 'package:codes/screens/settings/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'drawer/drawer_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().init();
  runApp(const ClothesECommerce());
}

class ClothesECommerce extends StatelessWidget {
  const ClothesECommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const DrawerScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      initialRoute: 'launch_screen',
      routes: {
        'launch_screen': (context) => const LaunchScreen(),
        'login_screen': (context) => LogInScreen(),
        'signup_screen': (context) => const SignUpScreen(),
        'home_screen': (context) => const HomeScreen(),
        'home_seeAll_section_B': (context) => HomeSeeAllSectionB(),
        'seeAll_det_screen': (context) => const SeeAllDetScreen(),
        'det_my_cart_screen': (context) => const DetMyCartScreen(),
        'checkOut_screen': (context) => const CheckOutScreen(),
        'payment_screen': (context) => const PaymentScreen(),
        'setting_screen': (context) => const SettingScreen(),
        'drawer_screen': (context) => const DrawerScreen(),
        'privacy_screen': (context) => const PrivacyScreen(),
        'aboutUs_screen': (context) => const AboutUsScreen(),
      },
    );
  }
}
