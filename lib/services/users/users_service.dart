import 'dart:html';

import 'package:dio/dio.dart';
import 'package:psicontran_dashboard/data/models/user_list/response_user_list/response_user_list_model.dart';

import 'package:psicontran_dashboard/shared/constants.dart';

import 'package:retrofit/http.dart';

import '../../data/models/user/response_login/response_login_model.dart';
import '../../data/models/user/user_model.dart';

part 'users_service.g.dart';

@RestApi(baseUrl: Constants.URL_SERVICE)
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  // @POST('/login')
  // Future<PagesPlantsModel> login(@Header("Authorization") String apiKey,
  //     @Path() String query, @Path() int page);

  @POST('/login')
  Future<ResponseUserLoginModel> login(@Body() UserLoginModel user);

  @GET('/user')
  Future<ResponseUserListModel> listUsers(
    @Header("Authorization") String token,
  );
}
