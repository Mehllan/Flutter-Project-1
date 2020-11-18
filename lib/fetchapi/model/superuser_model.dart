import 'package:json_annotation/json_annotation.dart';

part 'superuser_model.g.dart';

@JsonSerializable()
class SuperUserModel
{
  @JsonKey(name: '_id')
  String userId;
  @JsonKey(name: 'super_name')
  String superName;
  @JsonKey(name: 'super_email')
  String superEmail;
  @JsonKey(name: 'super_password')
  String superPassword;
  @JsonKey(name: 'profile_name')
  String profileName;

  SuperUserModel({this.userId, this.superName, this.superEmail, this.superPassword,
    this.profileName});

  factory SuperUserModel.fromJson(Map<String, dynamic> json) => _$SuperUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$SuperUserModelToJson(this);
}