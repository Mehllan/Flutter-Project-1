// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'superuser_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuperUserModel _$SuperUserModelFromJson(Map<String, dynamic> json) {
  return SuperUserModel(
    userId: json['_id'] as String,
    superName: json['super_name'] as String,
    superEmail: json['super_email'] as String,
    superPassword: json['super_password'] as String,
    profileName: json['profile_name'] as String,
  );
}

Map<String, dynamic> _$SuperUserModelToJson(SuperUserModel instance) =>
    <String, dynamic>{
      '_id': instance.userId,
      'super_name': instance.superName,
      'super_email': instance.superEmail,
      'super_password': instance.superPassword,
      'profile_name': instance.profileName,
    };
