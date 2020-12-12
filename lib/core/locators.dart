import 'package:get_it/get_it.dart';
import 'package:survea_app/core/services/api.dart';
import 'package:survea_app/core/viewmodels/post_model.dart';

GetIt locator = GetIt.asNewInstance();

void setupLocator(){
  locator
    ..registerLazySingleton(() => Api())
    ..registerFactory<PostViewModel>(() => PostViewModel());
}