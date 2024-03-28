import 'package:flutter/material.dart';

import '../Common_widgets/Button.dart';
import '../Common_widgets/Custom_Box.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool textColorcheck2 = true;
  Color textColor2=Colors.blue;

  TextEditingController Usernamecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  void changecolor(){
    setState(() {
      textColor2 =textColorcheck2?Colors.lightBlueAccent:Colors.purple;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        body:SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height/4,
    ),
    child: Column(
    children: [
    Text('LOGIN ',style: TextStyle(
    color: Colors.blue,
    fontSize: 50,
    fontWeight: FontWeight.bold,
    ),),
        Custom_Box(
         top:40.0,
          prefixIconColor: Colors.black87,
           controller:Usernamecontroller,
             prefixicon:Icon(Icons.person,size:35),
              hintText:'Enter Username'),

       Custom_Box(
    prefixIconColor: Colors.black87,
    controller:passwordcontroller,
    prefixicon:Icon(Icons.password,size:35),
    hintText:'Enter Password '),
   SizedBox(
     height: 20,
   ),
    TextButton(
    onPressed: (){
    textColorcheck2=!textColorcheck2;
    changecolor();
    }, child:Text(
    'Dont have an account!Register Here!',style: TextStyle(
    fontStyle: FontStyle.italic,
    fontSize: 22,
    color: textColor2,

    ),
    ) ),
    SizedBox(
      height: 10,
    ),
    Button(
    onPressed: (){},
    Text: 'LOGIN', color: Colors.white, size: 40.0,
    ),
    ],
    ),
    ),
    ),
    );
    }
}




