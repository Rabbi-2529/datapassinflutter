import 'package:datapass/model.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  Second(
      {Key? key,
      this.name,
      this.age,
      this.gmail,
      this.id,
      this.img,
      this.model})
      : super(key: key);
  String? name;
  String? id;
  String? gmail;
  String? age;
  String? img;
  Model? model;

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second"),
      ),
    );
  }
}
