import 'package:flutter/material.dart';
import 'package:flutter_application_2/approve_sched_page.dart';
import 'package:flutter_application_2/dashboard.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/notification_page.dart';
import 'package:flutter_application_2/scheduling_system.dart';

class EscortTrackingPage extends StatefulWidget {
  const EscortTrackingPage({Key? key}) : super(key: key);

  @override
  _EscortTrackingPageState createState() => _EscortTrackingPageState();
}

class _EscortTrackingPageState extends State<EscortTrackingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Method to show the modal with the Google Map
  void _showMapModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Team Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Expanded(
                //   child: GoogleMap(
                //     initialCameraPosition: CameraPosition(
                //       target: LatLng(37.7749, -122.4194),
                //       zoom: 12,
                //     ),
                //     markers: {
                //       Marker(
                //         markerId: MarkerId('marker_1'),
                //         position: LatLng(37.7749, -122.4194),
                //       ),
                //     },
                //     onMapCreated: (controller) {
                //       setState(() {
                //         mapController = controller;
                //       });
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor:
            Colors.grey[900], // Dark grey color for the app bar background
        title: const Text(
          'JAILTRACK',
          style: TextStyle(
              color: Colors.white), // White color for the app bar text
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
                  color: Colors.white), // White color for the logout text
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
                'Menu',
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
                      builder: (context) => const ScheduleSystemPage()),
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
                        builder: (context) => const EscortTrackingPage()));
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
                // Add navigation logic here
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
                // Add navigation logic here
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 1150,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jail Escort Tracking',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.grey[300],
                            child: Text(
                              'Team Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.grey[300],
                            child: Text(
                              'Escort Driver',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.grey[300],
                            child: Text(
                              'Officers',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.grey[300],
                            child: Text(
                              'Action',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Team A',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'John Doe',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Officer 1',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'Officer 2',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'Officer 3',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: ElevatedButton(
                              onPressed: _showMapModal,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                backgroundColor: Colors.lightGreen,
                              ),
                              child: Text(
                                'View Location',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EscortTrackingPage(),
  ));
}
