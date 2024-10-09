import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF6BF6C3), 
                  Color(0xFF3D79F8), 
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 1. Logo guruji
                  SizedBox(height: 150), 
                  Image.asset('assets/guruji_logo.png'), 
                  
                  SizedBox(height: 40), 

                  // 2. Text "Learn Graphic and UI/UX designing..."
                  Text(
                    'Learn Graphic and UI/UX designing in Hindi\nfor free with live projects.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Roboto-Regular',
                    ),
                  ),
                  
                  SizedBox(height: 48), 

                  // 3. Text input "Email Address"
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05, 
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF6CC5DE),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25), // Margin kiri 25
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 15), 

                  // 4. Text input "Password"
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05, 
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF6CC5DE),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25), 
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true, 
                    ),
                  ),
                  
                  SizedBox(height: 30), 

                  // 5. Button "LOGIN"
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Color(0xFF3F82E6),
                          fontSize: 15,
                          fontFamily: 'Roboto-Regular',
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20), 

                  // 6. Forgot Password
                  Container(
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1), 
                    child: Align(
                      alignment: Alignment.centerRight, 
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto-Regular',
                        ),
                      ),
                    ),
                  ),

                  
                  SizedBox(height: 60), 

                  // 7. Social Media Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Button Google
                      CircleButton(
                        imagePath: 'assets/ic_google.png', 
                      ),
                      SizedBox(width: 25), 

                      // Button Facebook
                      CircleButton(
                        imagePath: 'assets/ic_facebook.png', 
                      ),
                      SizedBox(width: 25), 

                      // Button Twitter
                      CircleButton(
                        imagePath: 'assets/ic_twitter.png', 
                      ),
                    ],
                  ),
                  SizedBox(height: 40), 

                  // 8. Don’t have an account? Register now
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: "Don’t have an account? ", 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto-Regular',
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Register now', 
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline, 
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget untuk tombol lingkaran dengan ikon gambar
class CircleButton extends StatelessWidget {
  final String imagePath;

  CircleButton({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white, // Background color untuk lingkaran
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          width: 24, 
          height: 24,
        ),
      ),
    );
  }
}
