// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white54,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 220),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1617127365659-c47fa864d8bc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVuJTIwZmFzaGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                        ),
                        const Text("Jhon"),
                        const Text("Jhon@gmail.com")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Seler Account"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: const Icon(Icons.notes_rounded),
                      title: const Text("Genral Statement"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: const Icon(Icons.help_outline_rounded),
                      title: const Text("Seller Help Center"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: const Icon(Icons.info_outline_rounded),
                      title: const Text("About"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: const Icon(Icons.logout_outlined),
                      title: const Text("Logout"),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('Login');
                          },
                          icon: const Icon(Icons.navigate_next)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
