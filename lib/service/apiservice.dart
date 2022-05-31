import 'package:http/http.dart' show Client;

class ApiService {

  final String baseUrl = "https://gist.githubusercontent.com";
  Client client = Client();

  Future<List<Profile>> getProfiles() async {
    final response = await client.get("$baseUrl/sumplit/dc6777e01e04bd0ae3cfb55958e91238/raw/f6a889a3b35ab99db78345b3a2c185a7a0c89698/login.json");
    if (response.statusCode == 200) {
      return profileFromJson(response.body);
    } else {
      return null;
    }
  }
}
