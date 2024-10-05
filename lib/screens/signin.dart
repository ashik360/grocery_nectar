import 'package:flutter/material.dart';
import 'package:nectar/screens/home.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/sign_banner.png'),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get your groceries',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'with nectar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 26),
                  Material(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/images/bd.png'),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '+880',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 26),
                  Center(
                    child: Text(
                      'Or connect with social media',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: 46,
                        width: double.infinity,
                        color: const Color(0xFF5383EC),
                        child: Row(
                          children: [
                            const SizedBox(width: 34),
                            Image.asset('assets/images/google.png'),
                            const SizedBox(width: 30),
                            const Text(
                              'Continue with Google',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 46,
                      width: double.infinity,
                      color: const Color(0xFF4A66AC),
                      child: Row(
                        children: [
                          const SizedBox(width: 36),
                          Image.asset('assets/images/facebook.png'),
                          const SizedBox(width: 30),
                          const Text(
                            'Continue with Facebook',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
