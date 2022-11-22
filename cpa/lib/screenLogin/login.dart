import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "package:"

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(159, 35, 190, 241),
     backgroundColor: Color(0xffF43397),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.only(right: 310),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 170),
                child: Text(
                  "Please login to your account.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black45),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Username"),
                    validator: req,
              ),
            
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Passwrod"),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, "Home"),
                  child: const Text("LOGIN"),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(159, 35, 190, 241),
                    side: const BorderSide(width: 3, color: Colors.white),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.black38,
                  ),
                )),
                const Text("OR"),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: const Divider(
                    color: Colors.black38,
                  ),
                )),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook_rounded,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {}, icon: FaIcon(FontAwesomeIcons.google),
                      color: Colors.redAccent,
                      
                      ),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account ?"),
                  TextButton(
                      onPressed: () => Navigator.pushNamed(context, "register"),
                      child: const Text("Register")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
