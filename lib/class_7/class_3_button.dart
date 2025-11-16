import 'package:flutter/material.dart';
//import 'bottom_navigationbar.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Group"), backgroundColor: Colors.blue),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Emtious Md Sazzad Hossain") , 
                accountEmail: Text("test@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-sulimansallehi-1704488.jpg&fm=jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add"),
              onTap: (){
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Emtious Md Sazzad Hossain") ,
              accountEmail: Text("test@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-sulimansallehi-1704488.jpg&fm=jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: (){
                Navigator.pop(context);
              },
            )

          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: 300,
              //width: double.infinity, /// will take the whole width of the screen
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                onPressed: () {},
                child: Text("Elevated Button with Modified Size"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: 300,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(),
                  ),
                ),

                onPressed: () {},
                child: Text("Outline Button"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: 300,
              child: TextButton(
                onPressed: () {
                  print("Read More");
                },
                child: Text("Add Button"),
              ),
            ),
            SizedBox(height: 20),
            Icon(Icons.phone_android, size: 100, color: Colors.red),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                print("Delete");
              },
              icon: Icon(Icons.delete, size: 100, color: Colors.red),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print("Single Click");
              },
              onDoubleTap: () {
                print("Double Click");
              },
              onLongPress: () {
                print("Long Press");
              },

              child: Text(
                "I want to check Gesture",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                print("Single Click");
              },
              onDoubleTap: () {
                print("Double Click");
              },
              onLongPress: () {
                print("Long Press");
              },

              child: Text(
                "I want to test InkWell Feature",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          print("Adding with Floating button");
        },
      ),
      //bottomNavigationBar: BottomNavigationbar()
      bottomNavigationBar: BottomNavigationBar(items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call',),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search',),

      ]
      ),
      );
  }
}
