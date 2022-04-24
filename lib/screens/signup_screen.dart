import 'package:flutter/material.dart';
import 'package:laundry/widgets/login_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sfpro',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(labelText: "Name"),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Phone Number"),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  LoginButton(onTap: () {}, text: 'SIGN UP'),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Alredy have an account?",
                        style: TextStyle(fontSize: 16, fontFamily: 'sfpro'),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {},
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
