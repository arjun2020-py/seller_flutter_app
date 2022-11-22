import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SiginupScreen extends StatefulWidget {
  const SiginupScreen({super.key});

  @override
  State<SiginupScreen> createState() => _SiginupScreenState();
}

class _SiginupScreenState extends State<SiginupScreen> {
  TextEditingController emailController = TextEditingController(),
      mobilController = TextEditingController(),
      passwrodController = TextEditingController(),
      confrompasswordCntroller = TextEditingController();

  final fromkey = GlobalKey<FormState>();

  void validateTextfiled() {
    if (fromkey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Succfully reisgter")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: fromkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image.asset("assets/images/log1.png"),
                          const Text(
                            "Siginup",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Register to your account",
                            style:
                                TextStyle(fontSize: 15, color: Colors.grey[70]),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Email",
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.person)),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$')
                                  .hasMatch(value)) {
                            return 'Please Enter vaild email address';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: mobilController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Mobilno",
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.mobile_friendly)),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^(\+\d{1,3}[- ]?)?\d{10}$')
                                  .hasMatch(value)) {
                            return "Wrong  mobile number ";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passwrodController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Passwrod",
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.remove_red_eye)),
                        validator: (value) {
                          if (value!.length <= 6) {
                            return 'Should be atleast 6 charcaters';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: confrompasswordCntroller,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "ConfromPasswrod",
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                        validator: (value) {
                          if (value != passwrodController.text) {
                            return "Passwrod is correct";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            CreateUsers(
                                emailController.text,
                                passwrodController.text,
                                mobilController.text,
                                confrompasswordCntroller.text,
                                context);
                            Navigator.of(context).pushNamed("Login");
                          },
                          child: const Text("Register")),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Alreday have an account"),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("Login");
                              },
                              child: Text("Login"))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> CreateUsers(String email, String passwrod, String mobil,
    String confromPass, BuildContext context) async {
  final auth = FirebaseAuth.instance;
  final userRef = FirebaseFirestore.instance.collection('USERS');

  try {
    await auth.createUserWithEmailAndPassword(email: email, password: passwrod);
    await userRef.add({
      'userid': auth.currentUser!.uid,
      'email': email,
      'mobil': mobil,
      'passwrod': passwrod,
      'confromPasswrod': confromPass
    });
    Navigator.pushNamed(context, 'Login');
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code)));
  }
}
