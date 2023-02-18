import 'package:apptoday/Controller/home_controller.dart';
import 'package:apptoday/Utils/Constants/Colors_Constants.dart';
import 'package:apptoday/Utils/Constants/Image_Constant.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users(
      {super.key,
      required this.name,
      required this.id,
      required this.username,
      required this.email,
      required this.street,
      required this.phone,
      required this.website,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.lat,
      required this.lng,
      required this.companyname,
      required this.catchPhrase,
      required this.bs});
  final id;
  final name;
  final username;
  final email;
  final street;
  final phone;
  final website;
  final suite;
  final city;
  final zipcode;
  final lat;
  final lng;
  final companyname;
  final catchPhrase;
  final bs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(ColorConstant.azure),
        appBar: AppBar(
          backgroundColor: Color(ColorConstant.babyblue),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(ColorConstant.black),
              size: 30,
            ),
          ),
          title: Row(
            children: [
              Text(
                "User Detail: ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(ColorConstant.black)),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "User: $id",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(ColorConstant.black)),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: FutureBuilder(
              future: getusers(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage(ImageConstant.person),
                              backgroundColor: Colors.transparent,
                              radius: 50,
                            ),
                            Text(
                              "$name",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "$username",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "$email",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "$phone",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                        color: Color(ColorConstant.blue),
                        width: MediaQuery.of(context).size.width * 1,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Personal Details:",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(ColorConstant.white),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "1) id: $id",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "2) Name: $name",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "3) Username: $username",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "4) Email: $email",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "5) Phone: $phone",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "6) Website: $website",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 3,
                        color: Color(ColorConstant.darkred),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Color(ColorConstant.blue),
                        width: MediaQuery.of(context).size.width * 1,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Address:",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(ColorConstant.white),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "1) Street: $street",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "2) Suite: $suite",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "3) City: $city",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "4) Zipcode: $zipcode",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Color(ColorConstant.brightblue),
                        width: MediaQuery.of(context).size.width * 1,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Geo:",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(ColorConstant.white),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "1) Lat: $lat",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "2) Lng: $lng",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 3,
                        color: Color(ColorConstant.darkred),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Color(ColorConstant.blue),
                        width: MediaQuery.of(context).size.width * 1,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Company:",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(ColorConstant.white),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "1) Company Name: $companyname",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "2) Catch Phrase: $catchPhrase",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "3) Bs: $bs",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ));
  }
}
