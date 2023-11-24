import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:supermarket/core/failure/failure.dart';

class ApiAgent {
  Future<http.Response> get({
    required String url,
  }) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      return await http.get(Uri.parse(url), headers: headers);
    } on SocketException {
      throw const Failure.netWorkFailure();
    } on TimeoutException {
      throw const Failure.timeOut();
    } catch (e) {
      throw const Failure.unknownFailure();
    }
  }

  Future<http.Response> post({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      return await http.post(Uri.parse(url),
          headers: headers, body: jsonEncode(body));
    } on SocketException {
      throw const Failure.netWorkFailure();
    } on TimeoutException {
      throw const Failure.timeOut();
    } catch (e) {
      throw const Failure.unknownFailure();
    }
  }

  Future<http.Response> put({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      return await http.put(Uri.parse(url),
          headers: headers, body: jsonEncode(body));
    } on SocketException {
      throw const Failure.netWorkFailure();
    } on TimeoutException {
      throw const Failure.timeOut();
    } catch (e) {
      throw const Failure.unknownFailure();
    }
  }
}
