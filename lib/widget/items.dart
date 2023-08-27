import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  String? name;
  String? phone;
  bool visible ;
  Items({this.name = "",this.phone="" , this.visible= false});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child:
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: ScrollNotificationObserver(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name : $name',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Phone : $phone",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
