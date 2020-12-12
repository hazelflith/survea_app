import 'package:dio/dio.dart';
import 'package:survea_app/core/models/post.dart';
import 'package:survea_app/core/result.dart';

class Api {
  static String baseUrl = "https://kema.unpad.ac.id/wp-json/wp/v2";

  Future post(int page, int perPage, {int categoryId, bool hasEnvelope}) async {
    List<Post> beritas = List<Post>();

    Map<String, dynamic> params = {
      '_embed': null,
      'page': page,
      'per_page': perPage,
      'categories': categoryId,
    };

    if (hasEnvelope) params['_envelope'] = 1;

    try {
      Response response = await Dio().get(
        '$baseUrl/posts',
        queryParameters: params,
        options: Options(contentType: 'application/json'),
      );

      if (response.statusCode == 200) {
        if (hasEnvelope) {
          beritas = postFromJson(response.data['body']);
          
        } else {
          beritas = postFromJson(response.data);
        }
      }
      return Result<List<Post>>(ResultType.Success, 'Berita berhasil di unduh',
          data: beritas);
    } catch (e) {
      print("e");
      return Result(ResultType.Error, 'Data Gagal');
    }
  }
}
