import 'package:apptoday/Controller/home_controller.dart';
import 'package:apptoday/Views/userdata.dart';
import 'package:flutter/material.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: getusers(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index].name),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Users(
                                    id: snapshot.data[index].id,
                                    name: snapshot.data[index].name,
                                    username: snapshot.data[index].username,
                                    email: snapshot.data[index].email,
                                    street: snapshot.data[index].address.street,
                                  )));
                      // getusers();
                    },
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
