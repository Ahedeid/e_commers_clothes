import 'dart:convert';
import 'package:codes/logic/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PrefKeys { user, token, logedIn, showOnce }

class SharedPrefController {
  static final _instance = SharedPrefController._();

  factory SharedPrefController() {
    return _instance;
  }

  late SharedPreferences preferences;

  SharedPrefController._();

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  setShowOnce(bool showOnce) async {
    await preferences.setBool(PrefKeys.showOnce.toString(), showOnce);
  }

  bool getShowOnce() =>
      preferences.getBool(PrefKeys.showOnce.toString()) ?? false;

  save(UserModel user) async {
    String userEncoded = jsonEncode(user.toJson());
    await preferences.setString(
      PrefKeys.user.toString(),
      userEncoded,
    );
  }

  // setLang(String lang ) async{
  //   await preferences.setString('lang', lang);
  // }
  //
  // getLang() async{
  //   await preferences.getString('lang');
  // }

  setLogedin() async {
    await preferences.setBool(PrefKeys.logedIn.toString(), true);
  }

  bool getLogedin() =>
      preferences.getBool(PrefKeys.logedIn.toString()) ?? false;

  UserModel getUser() {
    String userJson = preferences.getString(PrefKeys.user.toString()) ?? '';
    final userObject = jsonDecode(userJson);
    return UserModel.fromJson(userObject);
  }

  void removeUser() {
    preferences.remove(PrefKeys.user.toString());
    preferences.remove(PrefKeys.logedIn.toString());
  }

  clear() {
    preferences.clear();
  }
}
