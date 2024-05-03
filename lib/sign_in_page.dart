import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      appBar: AppBar(
        backgroundColor: Colors.grey[900], // Dark grey navbar background
        leading: Image.asset('icons/jailtracklogo.png'), // Logo image on the left
        title: const Text('JailTrack'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
            child: const Text(
              'Sign in',
              style: TextStyle(color: Color.fromARGB(255, 241, 241, 241)),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image with opacity
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {}, // This empty onTap handler ensures the GestureDetector captures tap events
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 206, 201, 201).withOpacity(0.30),
                BlendMode.dstATop,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://i0.wp.com/governmentph.com/wp-content/uploads/2018/09/How-to-Apply-to-BJMP-Process.png?fit=1200%2C628&ssl=1',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          // Sign up form
          Center(
            child: SizedBox(
              width: 400.0,
              child: Container(
                padding: const EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                  color: Colors.white, // Container color changed to white
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Jail Officer Registration',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold, // Bold text style
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Jail Facility Name',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black), // Text color changed to black
                    ),
                    const SizedBox(height: 20.0),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                      obscureText: true,
                    ),
                    const SizedBox(height: 20.0),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Contact Number',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 20.0),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Address',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Province',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Region',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 20.0),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Add signup functionality here
                      },
                      child: const Text('Request Create Account'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
