import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class MyController extends ChangeNotifier {

  String answer="";

  get_ans(String s1,String s2,String sign)
  {
    if(sign=='+') {
      double z = double.parse(s1) + double.parse(s2);
      answer = z.toString();
      notifyListeners();
    }
    if(sign=='-') {
      double z = double.parse(s1) - double.parse(s2);
      answer = z.toString();
      notifyListeners();
    }
    if(sign=='*') {
      double z = double.parse(s1) * double.parse(s2);
      answer = z.toString();
      notifyListeners();
    }
    if(sign=='/') {
      double z = double.parse(s1) / double.parse(s2);
      answer = z.toString();
      notifyListeners();
    }
  }
}