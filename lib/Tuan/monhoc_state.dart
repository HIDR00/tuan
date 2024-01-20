import 'package:flutter/material.dart';
import 'package:setting_tab/Tuan/const.dart';
import 'package:setting_tab/models/monhoc.dart';
import 'package:setting_tab/models/sinhvien.dart';

class MonHocState extends ChangeNotifier{
  List<MonHoc> _lMonHoc = [mh1,mh2,mh3];

  List<MonHoc> get lMonHoc => _lMonHoc;

  void addMonHoc(value){
    _lMonHoc = List.from(_lMonHoc)..add(value);
    notifyListeners(); 
  }
}