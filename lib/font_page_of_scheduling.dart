import 'package:flutter/material.dart';
import 'package:flutter_application_2/approve_sched_page.dart';
import 'package:flutter_application_2/attendance_list_page.dart';
import 'package:flutter_application_2/dashboard.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/notification_page.dart';
import 'package:flutter_application_2/scheduling_system.dart';
import 'package:flutter_application_2/second_scheduling_page.dart';
import 'package:flutter_application_2/setting_page.dart';
import 'package:flutter_application_2/view_officer_tracking.dart';

class FrontschedulingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JailTrack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OfficerListScreen(),
    );
  }
}

class OfficerListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[850], // Set the background color to dark gray
      appBar: AppBar(
        backgroundColor:
            Colors.grey[900], // Dark grey color for the app bar background
        titleSpacing:
            0.0, // Remove default spacing between title and leading widget

        title: Row(
          children: [
            Image.asset(
              'icons/JailTrackLogo.png', // Provide the path to your logo image
              height: 60,
              width: 60, // Adjust the height of the logo as needed
            ),
            const SizedBox(width: 8), // Add space between logo and title
            const Text(
              'JAILTRACK',
              style: TextStyle(
                color: Colors.white,
              ), // White color for the app bar text
            ),
          ],
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
              ), // White color for the logout text
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'JailTrack',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/dashboardlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Dashboard',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Dashboard page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashBoardPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/notificationlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Notification',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Notification page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/schedlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Scheduling System',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Scheduling System page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FrontschedulingPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/viewofficerlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'View Officers',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to View Officers page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewOfficersPage()));
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/officerreqlogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Officer Request',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Officer Request page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ApproveSchedPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/attendancelogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Attendance List',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Attendance List page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AttendanceListPage()),
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'icons/settingslogo.png', // Ensure the asset exists
                  width: 24, // Adjust width if needed
                  height: 24, // Adjust height if needed
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0)), // Changed text color to white
              ),
              onTap: () {
                // Navigate to Settings page
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Container(
          width: 600, // Adjust the width as needed
          height: 600, // Adjust the height as needed
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      'Scheduling System',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Create & View Team'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            SecondschedulingPage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child; // No transition animation
                        },
                      ),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('Create Schedule'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const ScheduleSystemPage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child; // No transition animation
                        },
                      ),
                    );
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
