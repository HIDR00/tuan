import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_tab/Tuan/monhoc_state.dart';
import 'package:setting_tab/Tuan/ui/them_mon_hoc.dart';
import 'package:setting_tab/models/monhoc.dart';

class MonHocScreen extends StatefulWidget {
  const MonHocScreen({super.key});

  @override
  State<MonHocScreen> createState() => _MonHocScreenState();
}

class _MonHocScreenState extends State<MonHocScreen>  {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Selector<MonHocState, List<MonHoc>>(
        selector: (ctx, state) => state.lMonHoc,
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFf4f6f5),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                    Image(
                      image: AssetImage('assests/icons/book1.png'),
                      width: 30,
                      height: 30
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Môn học: ${value[index].ten}"),
                        Text("số tín: ${value[index].tinChi}"),
                      ],
                    )],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        child: Text("+",style: TextStyle(fontSize: 40,color: Colors.white),),
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return ThemMonHoc();
            },);
          },
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(18),
            backgroundColor: Color(0xFF62d4b0),
            minimumSize: Size(40, 40),
            elevation: 10,
          ),
        ),
    );
  }
}
