import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Login", style: TextStyle(color: Colors.white, fontSize: 30),), backgroundColor: Colors.blue, centerTitle: true,),
      body: Column(
        children: [
          Image.asset("assets/Logo.jpg"),
          Text("Login with Username and Password"),

          Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Enter Phone Number",
                    labelText: "Phone Number",
                    border: OutlineInputBorder(

                    )
                  ),


                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Enter Your Password",
                      labelText: "Passward",
                      border: OutlineInputBorder(

                      )
                  ),


                ),
                SizedBox(height: 20,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                      ),

                      onPressed: (){}, child: Text("Submit", style: TextStyle(fontSize: 20),), ))
              ],),
            ),
          )
          
        ],
      ),

    );
  }
}
