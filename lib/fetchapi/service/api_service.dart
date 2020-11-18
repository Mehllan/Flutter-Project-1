import 'package:flutter_project_1/fetchapi/model/superuser_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: "http://10.41.86.197:3000/")
//@RestApi(baseUrl: "http://srapp.schoolreliance.com:3000/")
//@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET("/find_all_superusers")
  Future<List<SuperUserModel>> find_all_superusers();

}