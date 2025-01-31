```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // This line causes the error if the JSON is malformed or unexpected
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including JSON decoding errors
    print('Error: $e');
    // Consider rethrowing the exception or handling it appropriately
    rethrow;
  }
}
```