import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppColor with ChangeNotifier {
  bool _isLblue = true;


  bool get isLblue => _isLblue;

  get color => null;

  set isLblue(bool value) {
    _isLblue = value;
    notifyListeners();
  }

  Color get warna => (_isLblue) ? Colors.lightBlue : Colors.amber;

}