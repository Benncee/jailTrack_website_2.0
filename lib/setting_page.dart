import 'package:flutter/material.dart';
import 'package:flutter_application_2/about_us_page.dart';
import 'package:flutter_application_2/approve_sched_page.dart';
import 'package:flutter_application_2/attendance_list_page.dart';
import 'package:flutter_application_2/edit_profile_page.dart';
import 'package:flutter_application_2/feedback_page.dart';
import 'package:flutter_application_2/dashboard.dart';
import 'package:flutter_application_2/font_page_of_scheduling.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/notification_page.dart';
import 'package:flutter_application_2/view_officer_tracking.dart'; // Update the import here

class SettingsPage extends StatelessWidget {
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
      backgroundColor: Colors.grey[850],
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
          width: 700,
          height: 800,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Edit Profile'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            EditProfilePage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child;
                        },
                      ),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            AboutUsPage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child;
                        },
                      ),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('Send Feedback'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            FeedbackPage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child;
                        },
                      ),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('Logout'),
                  onTap: () {
                    // Handle Logout
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

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: Center(child: Text('Sign In Page')),
    );
  }
}
