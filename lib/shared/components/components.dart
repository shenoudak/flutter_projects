import 'package:flutter/material.dart';

Widget defaultButton(
{
   double width=double.infinity,
   double height=40.0,
   Color background=Colors.teal,
  @required String? text,
 @required VoidCallback ?function,


} )=>
    Container(
      width: width,
      color: background,
      height: height,
      child: MaterialButton(
        onPressed: function,
          child: Text('${text}',textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,

          ),
          ),

      ));
/*Widget defaultTextFormFiled({
  String?text,
  IconData? prefixIcon,
  IconData? sufixIcon,
  Function? OnchangedFunction,
  Function? OnsubmittedFunction,
  bool obsecure=false,

})=>
    TextFormField(
  controller: userNameController,
  //keyboardType:TextInputType.emailAddress ,
  onFieldSubmitted: (value){
    print(value);
  },
  onChanged: (value){
    print(value);
  },
  decoration:const InputDecoration(
    label: Text('Enter you Name'),
    prefixIcon: Icon(Icons.person_add_alt_1_outlined),
    border: OutlineInputBorder(),
  ) ,
),*/

