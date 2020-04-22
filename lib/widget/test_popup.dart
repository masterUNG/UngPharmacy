import 'package:flutter/material.dart';
import 'package:ungpharmacy/utility/my_style.dart';

class TestPopUp extends StatefulWidget {
  @override
  _TestPopUpState createState() => _TestPopUpState();
}

class _TestPopUpState extends State<TestPopUp> {

  String transport;
  int index = 0;

  List<String> listTrasport = [
    'ค่าที่เป็น Default',
    'รับสินค้าเองที่ร้าน สมศักดิ์เภสัช สอง',
    'รถส่งของตามรอบส่งสินค้า ในเมืองเชียงใหม่และจังหวัดใกล้เคียง',
    'รถขนส่งเอกชน',
  ];

  void selectedTransport(String string) {
    transport = string;
    print('Transport ==> $transport');
    setState(() {
      index = int.parse(string);
    });
  }

  Widget showTitleTransport() {
    return Text(
      'การจัดส่ง : ${listTrasport[index]}',
      style: TextStyle(
        fontSize: 24.0,
      ),
    );
  }

Widget showTransport() {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Card(
        color: MyStyle().lightColor,
        child: PopupMenuButton<String>(
          onSelected: (String string) {
            selectedTransport(string);
          },
          child: showTitleTransport(),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text(listTrasport[1]),
                value: '1',
              ),
              PopupMenuItem(
                child: Text(listTrasport[2]),
                value: '2',
              ),
              PopupMenuItem(
                child: Text(listTrasport[3]),
                value: '3',
              ),
            ];
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: showTransport(),
    );
  }
}