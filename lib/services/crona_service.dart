// lib/services/crona_service.dart

import 'package:http/http.dart' as http;

class CronaService {
  final String apiUrl;

  CronaService(this.apiUrl);

  Future<void> syncPoints() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Handle successful response
        print('Points synced successfully: ${response.body}');
      } else {
        // Handle error response
        print('Failed to sync points: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred while syncing points: $e');
    }
  }
}
