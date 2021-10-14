import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/shared/components/components.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final  userNameController=TextEditingController();

  final  emailController=TextEditingController();

  final  passwordController=TextEditingController();
  var formKey=GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Login',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40.0,),
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
                  validator: (value){
                    if(value==null||value.isEmpty)
                      return 'user name is empty';
                    return null;
                  },
                ),
                const SizedBox(height: 15.0,),
                TextFormField(
                  controller: emailController,

                  //keyboardType:TextInputType.emailAddress ,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  onChanged: (value){
                    print(value);
                  },
                  decoration:const InputDecoration(
                    label: Text('Enter your Email'),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ) ,
                  validator: (value){
                    if(value==null||value.isEmpty)
                      return 'user name is empty';
                    return null;
                  },
                ),
                const SizedBox(height: 15.0,),
                TextFormField(
                  controller: passwordController,

                  //keyboardType:TextInputType.emailAddress ,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  onChanged: (value){
                    print(value);
                  },
                  obscureText: true,
                  decoration:const InputDecoration(
                    label: Text('Enter you Password'),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(),

                  ) ,
                  validator: (value){
                    if(value==null||value.isEmpty)
                      return 'user name is empty';
                    return null;
                  },
                ),
                const SizedBox(height: 30.0,),
                defaultButton(
                    text: 'Login',
                    function: (){
                      if(formKey.currentState!.validate()){

                        print(userNameController.text);
                      }

                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
