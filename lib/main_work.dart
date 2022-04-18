import 'package:datapass/second.dart';
import 'package:flutter/material.dart';
import 'package:datapass/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("sajal"),
      ),
      body: ListView.builder(
          itemCount: list_all.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Second(
                          model: list_all[index],
                        )));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                width: double.infinity,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("${list_all[index].img}"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${list_all[index].name}"),
                        Text("${list_all[index].gmail}"),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${list_all[index].age}"),
                        Text("${list_all[index].id}"),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
