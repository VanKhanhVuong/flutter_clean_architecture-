// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
    };
