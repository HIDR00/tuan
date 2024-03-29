import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_tab/Tuan/monhoc_state.dart';
import 'package:setting_tab/models/monhoc.dart';

class ThemMonHoc extends StatefulWidget {
  const ThemMonHoc({super.key});

  @override
  State<ThemMonHoc> createState() => _ThemMonHocState();
}

class _ThemMonHocState extends State<ThemMonHoc> {
  TextEditingController _tcController = TextEditingController();
  TextEditingController _mhController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
                backgroundColor: Color(0xFFFDEBED),
                title: Text('Thêm môn học'),
                content: Container(
                  height: 150,
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nhập tên môn học:'),
                      Container(
                        height: 40,
                        width: 200,
                        child: TextFormField(
                          controller: _mhController,
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Text('Nhập số tín:'),
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 40,
                            child: TextFormField(
                              controller: _tcController,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Thoát',style: TextStyle(color: Colors.white),)
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<MonHocState>().addMonHoc(MonHoc(ten: _mhController.text, tinChi: int.parse(_tcController.text)));
                      Navigator.of(context).pop();
                    },
                    child: Text('Lưu'),
                  ),
                ],
              );
  }
}