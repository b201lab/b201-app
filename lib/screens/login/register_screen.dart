import 'package:b201_app/components/components.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I See You’re New',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Join us now',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Material(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'NRP',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Material(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Material(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Material(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
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
