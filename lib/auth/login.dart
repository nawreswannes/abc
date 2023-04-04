import 'package:flutter/material.dart';




class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Center(child: Image.asset("images/loggo.jpg")),

          Container(
            padding: EdgeInsets.all(20),
            child: Form(child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "enter votre nom",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1)
                  )
                ),
              ) ,
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1)
                    )
                ),

              ) ,

              Container(
                margin: EdgeInsets.all(10),
                  child:Row(
                    children: [

                Text("Pour créer un  nouveau compte"),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed("signup");
                  }
                  ,
                  child: Text(
                  " Cliquez ici" ,
                  style: TextStyle(color: Colors.blue),
                ),
                )
              ],
              )),
              Container(


                  child: ElevatedButton(

                    onPressed:() {} ,
                  child: Text("Se Connecter" ,
                    style: TextStyle(fontSize: 20),
                    ),
                  ))


            ],
            )),
          )



      ],)
    );
  }
}

