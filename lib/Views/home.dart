// ignore_for_file: camel_case_types

import 'package:apptoday/Controller/home_controller.dart';
import 'package:apptoday/Utils/Constants/Colors_Constants.dart';
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
        backgroundColor: Color(ColorConstant.azure),
        appBar: AppBar(
          backgroundColor: Color(ColorConstant.babyblue),
          title: Text(
            "Users",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(ColorConstant.black)),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: getusers(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index].name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    trailing: Icon(Icons.info_outline,
                        color: Color(
                          ColorConstant.lightgreen,
                        )),
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
                                    phone: snapshot.data[index].phone,
                                    website: snapshot.data[index].website,
                                    suite: snapshot.data[index].address.suite,
                                    city: snapshot.data[index].address.city,
                                    zipcode:
                                        snapshot.data[index].address.zipcode,
                                    lat: snapshot.data[index].address.geo.lat,
                                    lng: snapshot.data[index].address.geo.lng,
                                    companyname:
                                        snapshot.data[index].company.name,
                                    catchPhrase: snapshot
                                        .data[index].company.catchPhrase,
                                    bs: snapshot.data[index].company.bs,
                                  )));
                    },
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
