import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_clone/config/api_jsons.dart';
import 'package:google_clone/config/api_key.dart';
import 'package:http/http.dart' as http;

class ApiService {
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData({
    required BuildContext context,
    required String queryTerm,
    String start = "0",
  }) async {
    try {
      if (!isDummyData) {
        // Encode spaces as %20
        final q = queryTerm.contains(' ')
            ? queryTerm.split(' ').join('%20')
            : queryTerm;

        final response = await http.get(
          Uri.parse(
                     'https://www.googleapis.com/customsearch/v1'
                      '?key=$apiKey'
                      '&cx=$contextKey'
                      '&q=$q'
                      '&gl=pk'        // gl = country code
                        ),
        );

        if (response.statusCode == 200) {
          final respData = json.decode(response.body);
          return respData as Map<String, dynamic>;
        }
      }
    } catch (e) {
      debugPrint('API error: $e');
    }
    // Fallback to dummy JSON if needed
    return apiResponse;
  }
}
