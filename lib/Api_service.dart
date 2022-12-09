import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_opdracht_7/vehicle_model.dart';

///Documentation
///This file provides the application from a list of vehicles.
///after the list gets pulled. we filter with a query on the list.
///if search on license plate we filter the '-' out of the query.
///

class FetchVehicleList {
  var data = [];
  List<Rdw> results = [];
  String urlList = 'https://opendata.rdw.nl/resource/m9d7-ebf2.json/';

  Future<List<Rdw>> getuserList({String? query}) async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {

        data = json.decode(response.body);
        results = data.map((e) => Rdw.fromJson(e)).toList();
        if (query!= null){
          results = results.where((element) => element.kenteken!.toLowerCase().contains((query.replaceAll('-','').toLowerCase()))).toList();
        }
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}
