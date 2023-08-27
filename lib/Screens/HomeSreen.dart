import 'package:flutter/material.dart';
import 'package:stateful/widget/Btn.dart';
import 'package:stateful/widget/items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  VoidCallback? function ;
  Items item1 =Items();
  Items item2 =Items();
  Items item3 =Items();
  Items item4 =Items();
  Items item5 =Items();
  int index= 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('contacts Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              custometextfield('Enter your Name', const Icon(Icons.edit),nameController,TextInputType.text),
              SizedBox(
                height: 15,
              ),
              custometextfield(
                  'Enter your Phone Number', const Icon(Icons.call),phoneController,TextInputType.number),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Button(text: 'Add', color: Colors.blue,function: additem)),
                  Expanded(child: Button(text: 'Delete', color: Colors.red,function: deleteitem))
                ],
              ),
              SizedBox(height: 15,),
              item1,
              item2,
              item3,
              item4,
              item5,
            ],
          ),
        ),
      ),
    );
  }

  Widget custometextfield(String label, Widget icon ,TextEditingController controller, TextInputType type) {
    return TextFormField(
      controller: controller,
     keyboardType: type,
      decoration: InputDecoration(
          suffixIcon: icon,
          fillColor: Colors.white,
          enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          filled: true,
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          labelText: label,
          suffixStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black)),
    );
  }


  void additem(){
    if (index==0){
item1=Items(name: nameController.text,phone: phoneController.text,visible: true,);
    } else if(index==1){
      item2=Items(name: nameController.text,phone: phoneController.text,visible: true,);

    }else if(index==2){
      item3=Items(name: nameController.text,phone: phoneController.text,visible: true,);
    }else if(index==3){
      item4=Items(name: nameController.text,phone: phoneController.text,visible: true,);
    }else if(index==4){
      item5=Items(name: nameController.text,phone: phoneController.text,visible: true,);
    }
    else{
     return;
    }
    nameController.clear();
    phoneController.clear();
    index++;
    setState(() {});
  }

  void deleteitem(){
    if (index==5){
    item1=Items(name: nameController.text,phone: phoneController.text,visible: false,);
  } else if(index==4){
    item2=Items(name: nameController.text,phone: phoneController.text,visible: false,);

  }else if(index==3){
    item3=Items(name: nameController.text,phone: phoneController.text,visible: false,);

  }else if(index==2){
      item4=Items(name: nameController.text,phone: phoneController.text,visible: false,);

    }else if(index==1){
      item5=Items(name: nameController.text,phone: phoneController.text,visible: false,);

    }
  else{
    return;
  }
  index--;
  setState(() {});
  }
}
