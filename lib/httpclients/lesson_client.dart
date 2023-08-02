import 'package:http/http.dart' as http;
import 'package:ui_test/models/Lesson_Model.dart';

class LessonClient {
  Future<LessonApi?> getLessons() async {
    var httpclient = http.Client();
    var uri =
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons');
    var response = await httpclient.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;

      return lessonApiFromJson(json);
    }
  }
}
