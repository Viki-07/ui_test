import 'package:http/http.dart' as http;
import 'package:ui_test/models/Program_Model.dart';

class ProgramClient {
  Future<ProgramApi?> getPrograms() async {
    var httpclient = http.Client();
    var uri =
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs');
    var response = await httpclient.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;

      return programApiFromJson(json);
    }
  }
}
