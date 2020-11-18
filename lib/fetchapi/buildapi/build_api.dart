import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/createui/listview_ui.dart';
import 'package:flutter_project_1/fetchapi/model/superuser_model.dart';
import 'package:flutter_project_1/fetchapi/service/api_service.dart';

FutureBuilder<List<SuperUserModel>> BuildApi(BuildContext context) {
  final client = ApiService(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<List<SuperUserModel>>(

    future: client.find_all_superusers(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final List<SuperUserModel> posts = snapshot.data;
        return createListViewUI(context, posts);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}