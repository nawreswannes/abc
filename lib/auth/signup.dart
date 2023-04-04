import 'package:flutter/material.dart';




class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "enter votre email",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1)
                      )
                  ),
                ) ,

                DropdownButtonFormField(
                    items: const[
                      DropdownMenuItem(value:'Parents',child: Text("Juste les Parents")),
                      DropdownMenuItem(value:'Enfants',child: Text("Juste les Enfants")),
                      DropdownMenuItem(value:'Normal Utilisateur',child: Text("Simple utilisateur"))


                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                    value: 'Parents',
                    onChanged: (value){}
                ),
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

                        Text("Si vous avez un compte "),
                        InkWell(
                          onTap: (){

                            Navigator.of(context).pushNamed("login") ;

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


                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed:() {} ,
                      child: Text("créer un  nouveau compte" ,
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

