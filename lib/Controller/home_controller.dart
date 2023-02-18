import 'dart:convert';
import 'package:apptoday/Model/user_model.dart';
import 'package:http/http.dart' as http;

getusers() async {
  var userdata = [];
  var baseurl = "https://jsonplaceholder.typicode.com/users";
  var url = Uri.parse(baseurl);
  var res = await http.get(url);
  var jsonRes = jsonDecode(res.body);
  for (var i in jsonRes) {
    userdata.add(UserModel.fromJson(i));
  }
  return userdata;
  // return res.statusCode;
}
