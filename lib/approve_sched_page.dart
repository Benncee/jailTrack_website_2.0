import 'package:flutter/material.dart';
import 'package:flutter_application_2/dashboard.dart'; // Make sure DashBoardPage is defined here
import 'package:flutter_application_2/escort_tracking.dart';
import 'package:flutter_application_2/main.dart'; // Assuming MyApp is defined here
import 'package:flutter_application_2/notification_page.dart';

class ApproveSchedPage extends StatefulWidget {
  const ApproveSchedPage({Key? key}) : super(key: key);

  @override
  _ApproveSchedPageState createState() => _ApproveSchedPageState();
}

class _ApproveSchedPageState extends State<ApproveSchedPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor:
          Colors.black, // Set background color of the page to black
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('JAILTRACK'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child: const Text('Logout', style: TextStyle(color: Colors.white)),
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
                  MaterialPageRoute(builder: (context) => ApproveSchedPage()),
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
                  MaterialPageRoute(builder: (context) => const EscortTrackingPage()),
                );
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
                MaterialPageRoute(builder: (context) => const ApproveSchedPage()),
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

      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.35),
              BlendMode.dstATop,
            ),
            child: Container(
              decoration: const BoxDecoration(),
            ),
          ),
          SafeArea(
            child: Center(
              child: SizedBox(
                width: 1300,
                height: 500,
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 204, 201, 201),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Shift Approval',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Officer',
                              style: TextStyle(color: Colors.black)),
                          Text('Request Type',
                              style: TextStyle(color: Colors.black)),
                          Text('Officer to Swap',
                              style: TextStyle(color: Colors.black)),
                          Text('Existing Shift',
                              style: TextStyle(color: Colors.black)),
                          Text('New Shift',
                              style: TextStyle(color: Colors.black)),
                          Text('Approval Status',
                              style: TextStyle(color: Colors.black)),
                          Text('Hardcopy Upload',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('JO1 Junas Gutib',
                              style: TextStyle(color: Colors.black)),
                          const Text('Swap', style: TextStyle(color: Colors.black)),
                          const Text('Jail Officer 2 Buffa',
                              style: TextStyle(color: Colors.black)),
                          const Text('May 23, 2023\n8:30am-4:30pm',
                              style: TextStyle(color: Colors.black)),
                          const Text('May 28, 2023\n8:30am-4:30pm',
                              style: TextStyle(color: Colors.black)),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                            ),
                            child: const Text('Approve',
                                style: TextStyle(color: Colors.white)),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                            ),
                            child: const Text('File Upload',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                      const Divider(height: 40, thickness: 2),
                      const Text(
                        'Account Approval',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 20),
                      for (var i = 0; i < 2; i++) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text(
                                'User "*****" or James Stephen Buffa has requested to register an account.',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green),
                              ),
                              child: const Text('Approve',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                              ),
                              child: const Text('Cancel',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
