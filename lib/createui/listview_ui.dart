import 'package:flutter/material.dart';
import 'package:flutter_project_1/fetchapi/model/superuser_model.dart';


ListView createListViewUI(BuildContext context, List<SuperUserModel> posts) {
  return ListView.builder(
    itemCount: posts.length,
    padding: EdgeInsets.all(8),
    itemBuilder: (context, index) {
      return Card(
        elevation: 4,
        child: ListTile(
          title: Text(
            posts[index].superName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(posts[index].superEmail),
        ),
      );
    },
  );
}


