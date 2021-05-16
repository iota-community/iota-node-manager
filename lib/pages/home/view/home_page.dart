import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:hornet_node/endpoints/hornet_node_rest_client.dart';
import 'package:retrofit/dio.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    callHealth();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Home'),
    );
  }

  Future<void> callHealth() async {
    final request = await http.get(Uri.parse('https://iota.devster-hh.de'));

    final dio = Dio();
    var cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));
    final client = HornetNodeRestClient(dio);
    final cookies = await cookieJar
        .loadForRequest(Uri.parse('https://iota.devster-hh.de/'));
    HttpResponse<void> response =
        await client.health('https://iota.devster-hh.de');
    print(response.response.realUri);
  }
}
