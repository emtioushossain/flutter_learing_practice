import 'package:flutter/material.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phone = TextEditingController();
    TextEditingController gender = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Input"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://1000logos.net/wp-content/uploads/2016/11/Facebook-Logo.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: phone,
                keyboardType: TextInputType.phone,
                maxLength: 11,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10)
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
        
                  filled: true,
                  fillColor: Colors.grey.shade200,
        
                  //contentPadding: EdgeInsets.all(10),
                  hintText: "Enter Your Phone Number",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  helperText: "i.e. 01715XXXXXX",
                  helperStyle: TextStyle(
                    color: Colors.blue,
                    //fontSize: 15
                  ),
        
                  labelText: "Phone Number",
                  labelStyle: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: gender,
                keyboardType: TextInputType.text,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.face),
                  suffixIcon: Icon(Icons.check),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10)
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
        
                  filled: true,
                  fillColor: Colors.grey.shade200,
        
                  hintText: "Enter Your Gender",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  helperText: "i.e. Male, Female",
                  helperStyle: TextStyle(
                    color: Colors.blue,
                    //fontSize: 15
                  ),
        
                  labelText: "Gender",
                  labelStyle: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10)
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
        
                  filled: true,
                  fillColor: Colors.grey.shade200,
        
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  helperText: "i.e. @dmdn22mdm3",
                  helperStyle: TextStyle(
                    color: Colors.blue,
                    //fontSize: 15
                  ),
        
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
        
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print(phone.text);
                    print(gender.text);
                    print(password.text);

                    if ( phone.text.length < 6){
                      print("Phone should be min 8");
                    }


                    phone.clear();
                    gender.clear();
                    password.clear();
                    

                    
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
