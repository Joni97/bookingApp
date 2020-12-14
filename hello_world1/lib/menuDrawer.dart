import 'package:flutter/material.dart';
import 'package:hello_world1/dashboard.dart';
import 'package:hello_world1/services.dart';
import 'bookingDetails.dart';

class MenuDrawer extends StatelessWidget {
  viewDashboard(){
    print("hey joni");
  }
  // viewBookingDetailsScreen(){
  //   print("lfjsdlkjf");
  //   Navigator.pop(context);
  //   Navigator.push(context,
  //       MaterialPageRoute(builder: (context) => BookingdetailsScreen()),);
  // }
  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('username'),
      accountEmail: Text("email"),
      currentAccountPicture: const CircleAvatar(
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text("Startseite"),
          leading: const Icon(Icons.comment),
          onTap: (){
            Navigator.pop(context); // close the menudrawer 
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
            
            
          },
        ),
        ListTile(
          title: Text("Meine Buchungen"),
          leading: const Icon(Icons.comment),
          tileColor: Colors.redAccent,
          // onTap: () => viewBookingDetailsScreen(),
          onTap: () {
                print("lfjsdlkjf");
                
         Navigator.pop(context);
         Navigator.push(context,
         MaterialPageRoute(builder: (context) => BookingdetailsScreen()),);

          },
        ),
        ListTile(
          title: Text("Mein Konto"),
          leading: const Icon(Icons.comment),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Einstellungen"),
          leading: const Icon(Icons.comment),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Drawer(
        child: drawerItems,

      );      
  }
}