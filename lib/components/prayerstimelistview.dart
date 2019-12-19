import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class PrayersTimeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchTmings(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Timings> data = snapshot.data;
            return Flexible(child: _jobsListView(data));
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        });
  }

  ListView _jobsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(data[index].fajr, data[index].isha);
        });
  }

  ListTile _tile(String fajr, String duhr) => ListTile(
        title: Text(fajr == null ? 'tyrrt' : fajr,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(duhr==null ? 'bvv' : duhr),
      );

  Future<List<Timings>> fetchTmings() async {
    String url =
        'http://api.aladhan.com/v1/calendar?latitude=51.508515&longitude=-0.1254872&method=2&month=4&year=2017';
    final response =
        await http.get(url, headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return (responseJson['data']as List)
          .map((p) => Timings.fromJson(p))
          .toList();
    } else {
      throw Exception('Failed to load post');
    }
  }
}

class Timings {
  final String fajr;
  final String dhuhr;
  final String asr;
  final String isha;

  Timings({this.fajr, this.dhuhr, this.asr, this.isha});

  factory Timings.fromJson(Map<String, dynamic> json) {
    return new Timings(
        fajr: json['timings']['Fajr'],
        dhuhr: json['timings']['Dhuhr'],
        asr: json['timings']['Asr'],
        isha: json['timings']['isha']);
  }
}
