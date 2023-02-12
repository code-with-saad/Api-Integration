import 'package:apptoday/Controller/home_controller.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users(
      {super.key,
      required this.name,
      required this.id,
      required this.username,
      required this.email,
      required this.street});
  final id;
  final name;
  final username;
  final email;
  final street;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
            future: getusers(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Id: $id",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Name: $name",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Username: $username",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Email: $email",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Street: $street",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
