import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test109/dataCenter.dart';
import 'package:test109/medicine/medicine.dart';

class selectMedicineUser extends StatefulWidget {
  selectMedicineUser({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _selectMedicineUserState createState() => _selectMedicineUserState();
}

class _selectMedicineUserState extends State<selectMedicineUser> {
  var namesList = new List<String>();
  var idsList = new List<String>();

  @override
  void initState() {
    super.initState();
    namesList = userNameList;
    idsList = userIdList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select user'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: namesList.length,
        itemBuilder: (BuildContext context, int index) {
          return RaisedButton(
            //height: 50,
            //color: Colors.amber,
            child: Center(child: Text('${namesList[index]}')),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => medicine(userId: idsList[index]),
                ),
              );
            },
          );
        }
      )
    );
  }
}