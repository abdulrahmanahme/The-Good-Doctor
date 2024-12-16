import 'package:hive/hive.dart';
import 'package:the_good_doctor/core/app_const/app_const.dart';

class HiveHelperCash {
  HiveHelperCash();

  Box get _box => Hive.box(AppConst.saveEmailAndPassword);

  set setEmailToCash(String value) {
    _box.put(AppConst.email, value);
  }

  set setCashToPassword(String value) {
    _box.put(AppConst.password, value);
  }

 String get getCashedEmail => _box.get(AppConst.email)??'';
 String get getCashedPassword => _box.get(AppConst.password)??'';
}
