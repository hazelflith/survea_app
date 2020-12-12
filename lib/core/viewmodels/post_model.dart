import 'dart:async';

import 'package:survea_app/core/models/post.dart';
import 'package:survea_app/core/result.dart';
import 'package:survea_app/core/services/api.dart';
import 'package:survea_app/core/locators.dart';
import 'package:stacked/stacked.dart';

class PostViewModel extends BaseViewModel {
  Api _api = locator<Api>();
  int page;
  int perPage;
  bool hasEnvelope;
  int categoryId;
  String errorMessage;
  List<Post> beritas = List<Post>();

  void init() async {
    setBusy(true);
    errorMessage = '';
    setBusy(false);
  }

  Future getPost(page, perPage, {categoryId, hasEnvelope}) async {
    setBusy(true);
    Result result = await _api.post(page, perPage,
        categoryId: categoryId, hasEnvelope: hasEnvelope);
    if (result.resultType == ResultType.Success) {
      beritas = await result.data;
      setBusy(false);
    }
  }
}
